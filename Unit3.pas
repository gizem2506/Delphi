unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit1,Unit5,Unit6,Unit8,Unit7;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Close;
end;


procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
Form3.Close;

end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Form4.Show;
end;

end.
