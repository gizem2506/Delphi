unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Data.DB, Vcl.ComCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TForm6 = class(TForm)
    Image1: TImage;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBImage1: TDBImage;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    OpenDialog1: TOpenDialog;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}


procedure TForm6.SpeedButton10Click(Sender: TObject);
begin
  ADOTable1.Post;
end;

procedure TForm6.SpeedButton11Click(Sender: TObject);
begin
  ADOTable1.Cancel;
end;

procedure TForm6.SpeedButton13Click(Sender: TObject);
begin
  ADOTable1.Refresh;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute Then
  begin
    ADOTable1.Edit;
    DBImage1.Picture.LoadFromFile(OpenDialog1.FileName);
    ADOTable1.Post;
  end;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
  ADOTable1.Post;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
  ADOTable1.First;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
  ADOTable1.Prior;
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
  ADOTable1.Next;
end;

procedure TForm6.SpeedButton6Click(Sender: TObject);
begin
  ADOTable1.Last;
end;

procedure TForm6.SpeedButton7Click(Sender: TObject);
begin
  ADOTable1.Insert;
end;

procedure TForm6.SpeedButton8Click(Sender: TObject);
begin
  ADOTable1.Delete;
end;

procedure TForm6.SpeedButton9Click(Sender: TObject);
begin
  ADOTable1.Edit;
  ADOTable1.Post;
end;

end.
