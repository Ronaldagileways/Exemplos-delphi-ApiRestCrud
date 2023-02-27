program WKConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  System.JSON,
  WKData in 'WKData.pas' {Wk_Data: TDataModule};

var
  App: Thorse;
begin
  App := Thorse.Create;
  THorse.Use(Jhonson());


  //Leremos as pessoas do cadastro
  App.Get('/GetPessoa/:idPessoa',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    Var
      JPessoa : TJsonArray;
      IdPessoa : String;
    begin
      idPessoa := req.Params['IdPessoa'];
      res.Send<TJSONArray>(Wk_Data.wkGetPessoas(IdPessoa));
    end);

  App.Post('/UpdatePessoa',procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LBody,LBodyPost : TJSONArray;

  begin

    try
      lBody := TJsonArray.Create;
      LBodyPost := TJsonArray.Create;
      lBody.AddElement(Req.Body<TJSONObject>);

      Res.Send<TJSONObject>(TJSONObject(Wk_Data.wkAlteraPessoa(lBody)));

    finally
      lBody.Free;
    end;
  end);

  App.Post('/DeletaPessoa',procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    IdPessoa : String;

  begin
     idPessoa := req.Params['IdPessoa'];
     res.Send<TJSONArray>(Wk_Data.wkGetPessoas(IdPessoa));
  end);

   App.Post('/InserePessoa',procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LBody,LBodyPost : TJSONArray;

  begin

    try
      lBody := TJsonArray.Create;
      LBodyPost := TJsonArray.Create;
      lBody.AddElement(Req.Body<TJSONObject>);

      Res.Send<TJSONObject>(TJSONObject(Wk_Data.wkIncluiPessoa(lBody)));

    finally
      lBody.Free;
    end;
  end);
  THorse.Listen(9000);
end.
