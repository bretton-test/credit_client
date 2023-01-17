unit SMTP1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IpSmtp, StdCtrls, IpUtils, IpSock, ComCtrls, IpMsg, Gauges;

type
  TForm1 = class(TForm)
    IpSmtpClient1: TIpSmtpClient;
    btnSendMail: TButton;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtMailFrom: TEdit;
    edtMailCC: TEdit;
    memMessage: TMemo;
    edtSubject: TEdit;
    edtMailBCC: TEdit;
    cbxMailTo: TComboBox;
    cbxAttachments: TComboBox;
    btnBrowseAttachment: TButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtSMTPAddress: TEdit;
    edtUserID: TEdit;
    edtDomain: TEdit;
    ListBox1: TListBox;
    cbxCloseOnComplete: TCheckBox;
    Label9: TLabel;
    procedure btnSendMailClick(Sender: TObject);
    procedure cbxMailToKeyPress(Sender: TObject; var Key: Char);
    procedure btnBrowseAttachmentClick(Sender: TObject);
    procedure cbxAttachmentsKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure IpSmtpClient1SmtpResponse(Client: TIpCustomSmtpClient;
      ResponseTo: TIpSmtpStates; Code: Integer; const Response: String);
    procedure IpSmtpClient1SmtpStateChange(
      Client: TIpCustomSmtpClient; State: TIpSmtpStates);
    procedure IpSmtpClient1TaskComplete(Client: TIpCustomSmtpClient;
      Task: TIpSmtpTasks);
    procedure IpSmtpClient1ConnectError(Client: TIpCustomSmtpClient;
      ErrCode: Integer; const ErrStr: String);
    procedure IpSmtpClient1Progress(Client: TIpCustomSmtpClient;
      CharsTransferred: Cardinal);
    procedure IpSmtpClient1Error(Sender: TObject; Socket: Cardinal;
      ErrCode: Integer; const ErrStr: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Add(S : String);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Add(S: String);
begin
  StatusBar1.SimpleText := S;
  ListBox1.Items.Add(S);
  if ListBox1.ItemIndex > 0 then
    ListBox1.ItemIndex := ListBox1.Items.Count - 1;
end;

procedure TForm1.btnSendMailClick(Sender: TObject);
  { fill in the IpSMTPClient1.Message with the values from the form }
var
  MimePart : TIpMimeEntity;
  Disclaimer : TStringList;
begin
  IpSMTPClient1.UserID := edtUserID.Text;
  IpSmtpClient1.Domain := edtDomain.Text;
  { make sure we have a clean message to work with }
  IpSmtpClient1.Message.NewMessage;
  IpSmtpClient1.Message.UserFields.Add('X-IPro: Just to show that we ' +
    'can add extra tags to the header');

  Add('Preparing message');
  IpSmtpClient1.Message.From := edtMailFrom.Text;
  if cbxMailTo.Items.Count > 0 then
    IpSmtpClient1.Message.MailTo.Assign(cbxMailTo.Items)
  else
    IpSmtpClient1.Message.MailTo.Add(cbxMailTo.Text);
  IpSmtpClient1.Message.CC.Text := edtMailCC.Text;
  IpSmtpClient1.Message.BCC.Text := edtMailBcc.Text;
  IpSmtpClient1.Message.Subject := edtSubject.Text;

  { If there are no attachments, message is not mime. }
  { Just place memo text in message body.             }
  if (cbxAttachments.Items.Count = 0) then
    IpSmtpClient1.Message.EncodeBodyStrings(memMessage.Lines, '')
  else begin

    { Otherwise, add the memo text as a plain/text mime part }
    MimePart := IpSmtpClient1.Message.GetBodyPlain(True);
    MimePart.EncodeBodyStrings(memMessage.Lines, '');
    IpSmtpClient1.Message.ContentType := 'multipart';
    IpSmtpClient1.Message.ContentSubtype := 'mixed';

    { place mime disclaimer text in message body }
    Disclaimer := TStringList.Create;
    try
      with Disclaimer do begin
        Add('This message is in MIME format. Since your mail reader does not');
        Add('understand this format, some or all of this message may not be legible.');
      end;
      IpSmtpClient1.Message.EncodeBodyStrings(Disclaimer, '');
    finally
      Disclaimer.Free;
    end;

    { finally, add any file attachments }
    IpSmtpClient1.AttachmentList.Assign(cbxAttachments.Items);
  end;

  Add('Sending message');
  IpSmtpClient1.SendMail(edtSMTPAddress.Text, cbxCloseOnComplete.Checked);
end;

procedure TForm1.cbxMailToKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if cbxMailTo.Items.IndexOf(cbxMailTo.Text) = -1 then
      cbxMailTo.Items.Add(cbxMailTo.Text);
    cbxMailTo.Text := '';
  end;
end;

procedure TForm1.btnBrowseAttachmentClick(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    cbxAttachments.Items.AddStrings(OpenDialog1.Files);
  end;
end;

procedure TForm1.cbxAttachmentsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    if cbxAttachments.Items.IndexOf(cbxAttachments.Text) = -1 then
      cbxAttachments.Items.Add(cbxAttachments.Text);
    cbxAttachments.Text := '';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edtSmtpAddress.Text := '';
  edtUserID.Text := IpSmtpClient1.UserID;
  edtDomain.Text := IpSmtpClient1.Domain;
end;

procedure TForm1.IpSmtpClient1SmtpResponse(
  Client: TIpCustomSmtpClient; ResponseTo: TIpSmtpStates;
  Code: Integer; const Response: String);
begin
  Add('Response: Code=' + IntToStr(Code) + '; Text=' + Response);
  if ResponseTo = ssNoOp then
    Add('Message sent');
  { handle errors by showing the response text and a description of what }
  { we were doing at the time, we'll filter out a failure if the server  }
  { doesn't support EHLO }
  if (Code > 399) and not(ResponseTo = ssEhlo) then
    ShowMessage(Response + #13#10 + 'while ' + IpSmtpClient1.StateToStr(ResponseTo));
end;

procedure TForm1.IpSmtpClient1SmtpStateChange(
  Client: TIpCustomSmtpClient; State: TIpSmtpStates);
begin
  Add('State change: ' + IpSmtpClient1.StateToStr(State));
end;

procedure TForm1.IpSmtpClient1TaskComplete(Client: TIpCustomSmtpClient;
  Task: TIpSmtpTasks);
begin
  if Task = stSendMail then
    Add('Sending mail');
end;

procedure TForm1.IpSmtpClient1ConnectError(Client: TIpCustomSmtpClient;
  ErrCode: Integer; const ErrStr: String);
begin
  Add('OnConnectError: ' + IntToStr(ErrCode));
  Add('                ' + ErrStr);
end;

procedure TForm1.IpSmtpClient1Progress(Client: TIpCustomSmtpClient;
  CharsTransferred: Cardinal);
var
  Percent : Word;
begin
  Percent := Trunc((CharsTransferred / IpSmtpClient1.Message.Size) * 100);
  Add('Sending block: ' + IntToStr(Percent));
end;

procedure TForm1.IpSmtpClient1Error(Sender: TObject; Socket: Cardinal;
  ErrCode: Integer; const ErrStr: String);
begin
  Add('OnError: ' + IntToStr(ErrCode));
  Add('         ' + ErrStr);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
form1:=nil;
end;

end.
