unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Imagem: TImage;
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Label1Click(Sender: TObject);
Var
  Aleatorio: integer;
  ImagemCarregada: TImage;
begin

  Aleatorio := Random(10);

  Form1.Caption := IntToStr(Aleatorio);

  ImagemCarregada := TImage.Create(nil);

  if Aleatorio < 5 then
    ImagemCarregada.Picture.LoadFromFile('Doces.png')
  else
    ImagemCarregada.Picture.LoadFromFile('Bravo.png');

  Imagem.Picture := ImagemCarregada.Picture;

  Application.ProcessMessages;

  Sleep(1000);

  ImagemCarregada.Picture.LoadFromFile('Fantasma.png');
  Imagem.Picture := ImagemCarregada.Picture;

  Form1.Caption := '';

//  ImagemCarregada.Free;

end;

end.
