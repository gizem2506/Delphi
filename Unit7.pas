unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm7 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  sayac:integer;

implementation

{$R *.dfm}

uses Unit1;


procedure TForm7.FormCreate(Sender: TObject);
begin
sayac:=0;
end;

procedure TForm7.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled:=False;
Form7.hide;
Form1.Show;
end;

end.
