unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Image3: TImage;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton11: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    SpeedButton13: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    DBImage1: TDBImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit6, Unit8;

procedure TForm2.ADOTable1FilterRecord(DataSet: TDataSet; var Accept: Boolean);

var
  s: string;
begin
  s := Edit1.Text;
  if AnsiUpperCase(s) = AnsiUpperCase
    (Copy(ADOTable1.FieldByName('Adi').AsString, 1, s.Length)) then
    Accept := True
  else
    Accept := False;

end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
  ADOTable1.Filtered := False;
  if (Edit1.Text = '') then
    ADOTable1.Filtered := False
  else
    ADOTable1.Filtered := True;

end;



procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
  ADOTable1.Refresh;
end;

procedure TForm2.SpeedButton11Click(Sender: TObject);
begin
  if OpenDialog1.Execute Then
  begin
    ADOTable2.Edit;
    DBImage1.Picture.LoadFromFile(OpenDialog1.FileName);
    ADOTable2.Post;
  end;
end;

procedure TForm2.SpeedButton12Click(Sender: TObject);
begin
  ADOTable2.Post;
end;

procedure TForm2.SpeedButton13Click(Sender: TObject);
begin
  Form6.Show;
  Form2.Hide;
end;

procedure TForm2.SpeedButton14Click(Sender: TObject);
begin
   ADOTable2.First;
end;

procedure TForm2.SpeedButton15Click(Sender: TObject);
begin
  ADOTable2.Prior;
end;

procedure TForm2.SpeedButton16Click(Sender: TObject);
begin
  ADOTable2.Next;
end;

procedure TForm2.SpeedButton17Click(Sender: TObject);
begin
  ADOTable2.Last;
end;

procedure TForm2.SpeedButton18Click(Sender: TObject);
begin
  ADOTable2.Insert;
end;

procedure TForm2.SpeedButton19Click(Sender: TObject);
begin
  ADOTable2.Delete;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  ADOTable1.First;
end;

procedure TForm2.SpeedButton20Click(Sender: TObject);
begin
  ADOTable2.Post;
end;

procedure TForm2.SpeedButton22Click(Sender: TObject);
begin
  ADOTable2.Cancel;
end;

procedure TForm2.SpeedButton23Click(Sender: TObject);
begin
  ADOTable2.Refresh;
end;

procedure TForm2.SpeedButton24Click(Sender: TObject);
begin
  Form8.Show;
  Form2.Hide;
end;

procedure TForm2.SpeedButton25Click(Sender: TObject);
begin
  Form3.Show;
  Form2.Hide;
end;

procedure TForm2.SpeedButton26Click(Sender: TObject);
begin
  Form2.Close;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  ADOTable1.Prior;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
  ADOTable1.Next;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  ADOTable1.Last;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
  ADOTable1.Insert;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  ADOTable1.Delete;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  ADOTable1.Edit;
  ADOTable1.Post;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  ADOTable1.Post;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
  ADOTable1.Cancel;
end;

end.
