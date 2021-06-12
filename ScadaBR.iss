; Innacio - The ScadaBR-EF Windows installer

#define MyAppName "ScadaBR"
#define MyAppVersion "1.1"
#define MyAppURL "http://www.scadabr.com.br/"
;#define MyAppFolder "C:\users\celso\�rea de Trabalho\innacio"
#define MyAppFolder "C:\Users\Celso\Documents\Sistema\Scripts\innacio"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0E856116-C05F-4AEB-A24A-19B20DFE407A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName=ScadaBR-EF, release 2
AppComments=Open-source SCADA software
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile={#MyAppFolder}\License.rtf
SetupIconFile={#MyAppFolder}\scadabr.ico
OutputDir={#MyAppFolder}\bin
OutputBaseFilename=ScadaBR Setup
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=capa.bmp
WizardSmallImageFile=logo.bmp
DisableWelcomePage=False

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
; 32-bit Tomcat
Source: "tomcat32\*"; DestDir: "{app}\tomcat"; Flags: ignoreversion createallsubdirs recursesubdirs; Check: not Is64BitInstallMode
; 64-bit Tomcat
Source: "tomcat64\*"; DestDir: "{app}\tomcat"; Flags: ignoreversion createallsubdirs recursesubdirs; Check: Is64BitInstallMode
; ScadaBR WebApp
Source: "ScadaBR\*"; DestDir: "{app}\tomcat\webapps\ScadaBR"; Flags: ignoreversion createallsubdirs recursesubdirs;
Source: "scadabr.ico"; DestDir: "{app}"; Flags: ignoreversion
; Documenta��o
Source: "ManualScadaBR.pdf"; DestDir: "{app}\docs"; Flags: ignoreversion
Source: "ManuelScadaBR.pdf"; DestDir: "{app}\docs"; Flags: ignoreversion
; Arquivos para configura��o do Tomcat
Source: "server.xml"; DestDir: "{app}\tomcat\conf"; Flags: ignoreversion;
Source: "tomcat-users.xml"; DestDir: "{app}\tomcat\conf"; Flags: ignoreversion; Check: ShouldCreateTomcatUser

[CustomMessages]
; Tradu��o em portugu�s
brazilianportuguese.Tomcat_Settings_Label_Port_Caption0=Porta HTTP do Tomcat:
brazilianportuguese.Tomcat_Settings_Label_TomcatUser_Caption0=Criar usu�rio para o Tomcat Manager (opcional):
brazilianportuguese.Tomcat_Settings_Label_Username_Caption0=Nome de Usu�rio:
brazilianportuguese.Tomcat_Settings_Label_Password_Caption0=Senha:
brazilianportuguese.Tomcat_Settings_Label_TomcatSettings_Caption0=Utilize os campos abaixo para alterar as configura��es do Apache Tomcat.
brazilianportuguese.Tomcat_Settings_Edit_Port_Text0=8080
brazilianportuguese.Tomcat_Settings_Caption=Configura��es do Tomcat
brazilianportuguese.Tomcat_Settings_Description=Configurar o Apache Tomcat utilizado no ScadaBR
brazilianportuguese.Tomcat_Settings_Invalid_Port=Porta HTTP inv�lida!
brazilianportuguese.Tomcat_Settings_User_Fields_Missing=O campo "Nome de usu�rio" ou "Senha" est� vazio!
brazilianportuguese.Java_Settings_Caption=Configura��es da M�quina Virtual Java
brazilianportuguese.Java_Settings_Description=Configurar a M�quina Virtual Java utilizada no ScadaBR
brazilianportuguese.Java_Settings_Select_JRE=Por favor selecione o caminho do JRE 8 instalado no seu sistema. Note que se voc� possuir sistema operacional 64-bit, voc� deve especificar um caminho JRE 64-bit v�lido:
brazilianportuguese.Java_Settings_Folder=Pasta:
brazilianportuguese.Java_Settings_Invalid_JRE=O caminho especificado n�o � um JRE v�lido!
brazilianportuguese.Installing_Service=Instalando servi�o do Windows...
brazilianportuguese.Configuring_Tomcat=Configurando Tomcat...
brazilianportuguese.Run_ScadaBR_Now=Executar o ScadaBR agora
brazilianportuguese.Delete_Config=Remover todos os arquivos do ScadaBR ? (Se voc� tem algo que criou que deseja manter, clique em N�o)

; Tradu��o em espanhol
spanish.Tomcat_Settings_Label_Port_Caption0=Puerto HTTP de Tomcat:
spanish.Tomcat_Settings_Label_TomcatUser_Caption0=Crear usuario para Tomcat Manager (opcional):
spanish.Tomcat_Settings_Label_Username_Caption0=Nombre de Usuario:
spanish.Tomcat_Settings_Label_Password_Caption0=Contrase�a:
spanish.Tomcat_Settings_Label_TomcatSettings_Caption0=Utilice los campos abajo para cambiar las configuraciones de Apache Tomcat.
spanish.Tomcat_Settings_Edit_Port_Text0=8080
spanish.Tomcat_Settings_Caption=Configuraciones de Tomcat
spanish.Tomcat_Settings_Description=Configurar Apache Tomcat utilizado en ScadaBR
spanish.Tomcat_Settings_Invalid_Port=Puerto HTTP inv�lido!
spanish.Tomcat_Settings_User_Fields_Missing=El campo "Nombre de usuario" o "Contrase�a" est� vac�o!
spanish.Java_Settings_Caption=Configuraciones de la M�quina Virtual Java
spanish.Java_Settings_Description=Configurar la M�quina Virtual Java utilizada en ScadaBR
spanish.Java_Settings_Select_JRE=Por favor, seleccione la ruta del JRE 8 instalado en su sistema. Note que si usted posee sistema operacional 64-bit, debe especificar la ruta de un JRE 64-bit v�lido:
spanish.Java_Settings_Folder=Carpeta:
spanish.Java_Settings_Invalid_JRE=La ruta especificada no es un JRE v�lido!
spanish.Installing_Service=Instalando servicio de Windows...
spanish.Configuring_Tomcat=Configurando Tomcat...
spanish.Run_ScadaBR_Now=Ejecutar ScadaBR ahora
spanish.Delete_Config=Desea eliminar todos los archivos en el directorio de ScadaBR? (Si usted tiene algo haya creado y desea mantener, haga clic en No)

; Tradu��o em ingl�s
english.Tomcat_Settings_Label_Port_Caption0=Tomcat HTTP Port:
english.Tomcat_Settings_Label_TomcatUser_Caption0=Create user for Tomcat Manager (optional):
english.Tomcat_Settings_Label_Username_Caption0=Username:
english.Tomcat_Settings_Label_Password_Caption0=Password:
english.Tomcat_Settings_Label_TomcatSettings_Caption0=Use the fields below to change Apache Tomcat settings.
english.Tomcat_Settings_Edit_Port_Text0=8080
english.Tomcat_Settings_Caption=Tomcat Settings
english.Tomcat_Settings_Description=Configure Apache Tomcat used in ScadaBR
english.Tomcat_Settings_Invalid_Port=Invalid HTTP Port!
english.Tomcat_Settings_User_Fields_Missing=The "Username" or "Password" field is empty!
english.Java_Settings_Caption=Java Virtual Machine Settings
english.Java_Settings_Description=Configure the Java Virtual Machine used in ScadaBR
english.Java_Settings_Select_JRE=Please select the path of a JRE 8 installed on your system. Note that if you have a 64-bit operating system, you must specify a 64-bit JRE:
english.Java_Settings_Folder=Folder:
english.Java_Settings_Invalid_JRE=The specified path is not a valid JRE!
english.Installing_Service=Installing Windows service...
english.Configuring_Tomcat=Configuring Tomcat...
english.Run_ScadaBR_Now=Run ScadaBR now
english.Delete_Config=Remove all files in your ScadaBR directory ? (If you have anything you created that you want to keep, click No)

[Run]
; Cria��o do Servi�o Windows
Filename: "{cmd}"; Parameters: "/c ""{app}\tomcat\bin\service.bat"" install ScadaBR --rename"; WorkingDir: "{app}\tomcat\bin\"; Flags: runhidden; StatusMsg: "{cm:Installing_Service}"
Filename: "{app}\tomcat\bin\ScadaBR.exe"; Parameters: "//US//ScadaBR --DisplayName ""ScadaBR - Apache Tomcat"" --Description ""ScadaBR service, powered by Apache Tomcat"" --Startup auto --Jvm ""{code:GetJVMDll|jre}"" --JvmOptions ""-Dfile.encoding=UTF-8;-Djavax.servlet.request.encoding=UTF-8;-Dcatalina.home={app}\tomcat;-Dcatalina.base={app}\tomcat;-Djava.io.tmpdir={app}\tomcat\temp;-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager;-Djava.util.logging.config.file={app}\tomcat\conf\logging.properties"""; WorkingDir: "{app}\tomcat\bin\"; Flags: runhidden; StatusMsg: "{cm:Installing_Service}"
; Cria��o do Servi�o Windows - Alterar permiss�es de pasta
Filename: "{cmd}"; Parameters: "/c icacls ""{app}"" /grant *S-1-5-19:(OI)(CI)M /T"; Flags: runhidden; StatusMsg: "{cm:Installing_Service}"
; Altera��o da porta HTTP
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\server.xml') | Foreach-Object {{$_ -replace '<tomcat-port>', '{code:GetInstallSettings|port}'} | Set-Content '{app}\tomcat\conf\server.xml'"" "; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}"
; Cria��o de usu�rios do tomcat-manager
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\tomcat-users.xml') | Foreach-Object {{$_ -replace '<user-name>', '{code:GetInstallSettings|username}'} | Set-Content '{app}\tomcat\conf\tomcat-users.xml'"" "; Check: ShouldCreateTomcatUser; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}" 
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\tomcat-users.xml') | Foreach-Object {{$_ -replace '<user-password>', '{code:GetInstallSettings|password}'} | Set-Content '{app}\tomcat\conf\tomcat-users.xml'"" ";  Check: ShouldCreateTomcatUser; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}"
; Iniciar servi�o do ScadaBR
;Filename: "{app}\tomcat\bin\ScadaBR.exe"; Parameters: "start"; Flags: postinstall runascurrentuser runhidden nowait;
Filename: "{cmd}"; Parameters: "/c net start ScadaBR"; Description: {cm:Run_ScadaBR_Now}; Flags: postinstall runascurrentuser runhidden nowait;

[UninstallRun]
; Remo��o do Servi�o Windows
Filename: "{app}\tomcat\bin\ScadaBR.exe"; Parameters: "//DS//ScadaBR"; Flags: runhidden; RunOnceId: "DelTomcatService"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\tomcat\bin\scadabr_tomcat.exe"
Type: filesandordirs; Name: "{app}\tomcat\bin\scadabr_tomcatw.exe"
Type: filesandordirs; Name: "{app}\tomcat\bin"
Type: filesandordirs; Name: "{app}\tomcat\logs"
Type: filesandordirs; Name: "{app}\tomcat\temp"

[Messages]
BeveledLabel=Innacio

[Icons]
Name: "{group}\Manual - Portugu�s"; Filename: "{app}\docs\ManualScadaBR.pdf"
Name: "{group}\Manuel - Fran�ais"; Filename: "{app}\docs\ManuelScadaBR.pdf"
Name: "{group}\ScadaBR"; Filename: "http://localhost:{code:GetInstallSettings|port}/ScadaBR"; IconFilename: "{app}\scadabr.ico"

[Code]
var
  // Controles de formul�rio
  Label_Port: TLabel;
  Label_TomcatUser: TLabel;
  Label_Username: TLabel;
  Label_Password: TLabel;
  Label_TomcatSettings: TLabel;
  Edit_Port: TEdit;
  Edit_Username: TEdit;
  Edit_Password: TEdit;
  // Vari�veis para acessar conte�do das p�ginas criadas
  Java_Settings_PageID: Integer;
  Java_Settings_Page: TInputDirWizardPage;
  // Vari�veis para armazenar os dados inseridos
  JRE_Path : String;
  Tomcat_Port : String;
  Tomcat_Username: String;
  Tomcat_Password: String;


{ Usamos este procedimento para acelerar o carregamento do PowerShell }
procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
  if CurStep = ssInstall then
    Exec('powershell.exe', '-NoProfile -Command "exit"', '', SW_HIDE, ewNoWait, ResultCode);
end;

{ Testar se deve ser criado um usu�rio para o Tomcat Manager }
function ShouldCreateTomcatUser(): Boolean;
begin
  Result := False;
  if (Trim(Tomcat_Username) <> '') and (Trim(Tomcat_Password) <> '') then
    Result := True;
end;

{ Remover configura��es do usu�rio, com confirma��o }
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
  begin
    if MsgBox(ExpandConstant('{cm:Delete_Config}'), mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
      DelTree(ExpandConstant('{app}'), True, True, True);
  end;
end;

{ Recuperar os dados informados pelo usu�rio }
function GetInstallSettings(AParam: String): String;
begin
  if AParam = 'port' then
    Result := Tomcat_Port
  else if AParam = 'username' then
    Result := Tomcat_Username
  else if AParam = 'password' then
    Result := Tomcat_Password
  else if AParam = 'jre' then
    Result := JRE_Path
  else
    Result := '';
end;

{ Encontrar a DLL da JVM selecionada }
function GetJVMDll(AParam: String): String;
var
  SearchPath: String;
  DllPath: String;
begin
  SearchPath := JRE_Path + '\bin\hotspot;' + JRE_Path + '\bin\client;' + JRE_Path + '\bin\server;' + JRE_Path + '\jre\bin\hotspot;' + JRE_Path + '\jre\bin\client;' + JRE_Path + '\jre\bin\server;';
  DllPath := FileSearch('jvm.dll', SearchPath);
  
  Result := DllPath;
end;

{ Esta fun��o � usada na valida��o dos dados da p�gina de configura��o do Java }
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  
  if CurPageID = Java_Settings_PageID then
  begin
    JRE_Path := Java_Settings_Page.Values[0];
    if not FileExists(JRE_Path + '\bin\java.exe') then
    begin
      MsgBox(ExpandConstant('{cm:Java_Settings_Invalid_JRE}'), mbError, MB_OK);
      Result := False;
    end;    
  end;
end;

{ Cria��o da p�gina de configura��o do Java }
function Java_Settings_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TInputDirWizardPage;
begin
  Page := CreateInputDirPage(PreviousPageId,
          ExpandConstant('{cm:Java_Settings_Caption}'),
          ExpandConstant('{cm:Java_Settings_Description}'),
          ExpandConstant('{cm:Java_Settings_Select_JRE}'),
          False, 'ANewFolderName');
  Page.Add(ExpandConstant('{cm:Java_Settings_Folder}'));
  Page.Values[0] := GetEnv('JAVA_HOME');
  
  Java_Settings_Page := Page;
  Java_Settings_PageID := Page.ID;

  Result := Page.ID;
end;

{ Esta fun��o valida os dados na p�gina de configura��o do Tomcat }
function Tomcat_Settings_NextButtonClick(Page: TWizardPage): Boolean;
var
  Port: Longint;
begin
  Result := False;
  Port := StrToIntDef(Edit_Port.Text, 0);
  
  if Port = 0 then
    MsgBox(ExpandConstant('{cm:Tomcat_Settings_Invalid_Port}'), mbError, MB_OK)
  else if (Trim(Edit_Username.Text) <> '') xor (Trim(Edit_Password.Text) <> '') then
    MsgBox(ExpandConstant('{cm:Tomcat_Settings_User_Fields_Missing}'), mbInformation, MB_OK)
  else
  begin
    Tomcat_Port := Edit_Port.Text;
    Tomcat_Username := Trim(Edit_Username.Text);
    Tomcat_Password := Trim(Edit_Password.Text);
    Result := True;
  end;
end;

{ Cria��o da p�gina de configura��o do Tomcat }
function Tomcat_Settings_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:Tomcat_Settings_Caption}'),
    ExpandConstant('{cm:Tomcat_Settings_Description}')
  );

  { Cria��o das entradas de formul�rio da p�gina }
  // Label_TomcatSettings
  Label_TomcatSettings := TLabel.Create(Page);
  with Label_TomcatSettings do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Tomcat_Settings_Label_TomcatSettings_Caption0}');
    Left := ScaleX(0);
    Top := ScaleY(16);
    Width := ScaleX(400);
    Height := ScaleY(25);
    Font.Color := -16777208;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
  end;

  // Label_Port
  Label_Port := TLabel.Create(Page);
  with Label_Port do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Tomcat_Settings_Label_Port_Caption0}');
    Left := ScaleX(0);
    Top := ScaleY(60);
    Width := ScaleX(120);
    Height := ScaleY(13);
    Font.Color := -16777208;
    Font.Height := ScaleY(-11);
    Font.Name := 'Tahoma';
  end;
  
  // Label_TomcatUser
  Label_TomcatUser := TLabel.Create(Page);
  with Label_TomcatUser do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Tomcat_Settings_Label_TomcatUser_Caption0}');
    Left := ScaleX(0);
    Top := ScaleY(104);
    Width := ScaleX(106);
    Height := ScaleY(13);
    Font.Style := [fsBold];
  end;
  
  // Label_Username
  Label_Username := TLabel.Create(Page);
  with Label_Username do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Tomcat_Settings_Label_Username_Caption0}');
    Left := ScaleX(0);
    Top := ScaleY(138);
    Width := ScaleX(120);
    Height := ScaleY(13);
  end;
  
  // Label_Password
  Label_Password := TLabel.Create(Page);
  with Label_Password do
  begin
    Parent := Page.Surface;
    Caption := ExpandConstant('{cm:Tomcat_Settings_Label_Password_Caption0}');
    Left := ScaleX(0);
    Top := ScaleY(170);
    Width := ScaleX(120);
    Height := ScaleY(13);
  end;
  
  // Edit_Port
  Edit_Port := TEdit.Create(Page);
  with Edit_Port do
  begin
    Parent := Page.Surface;
    Left := ScaleX(168);
    Top := ScaleY(58);
    Width := ScaleX(121);
    Height := ScaleY(21);
    TabOrder := 0;
    Text := ExpandConstant('{cm:Tomcat_Settings_Edit_Port_Text0}');
  end;
  
  // Edit_Username
  Edit_Username := TEdit.Create(Page);
  with Edit_Username do
  begin
    Parent := Page.Surface;
    Left := ScaleX(120);
    Top := ScaleY(136);
    Width := ScaleX(121);
    Height := ScaleY(21);
    TabOrder := 1;
  end;
  
  // Edit_Password
  Edit_Password := TEdit.Create(Page);
  with Edit_Password do
  begin
    Parent := Page.Surface;
    Left := ScaleX(120);
    Top := ScaleY(168);
    Width := ScaleX(121);
    Height := ScaleY(21);
    TabOrder := 2;
  end;

  with Page do
  begin
    OnNextButtonClick := @Tomcat_Settings_NextButtonClick;
  end;

  Result := Page.ID;
end;

{ Este procedimento � chamado ao iniciar o Inno Setup }
procedure InitializeWizard();
var
  AfterID: Integer;
begin
  AfterID := wpSelectTasks;  
  AfterID := Java_Settings_CreatePage(AfterID);
  AfterID := Tomcat_Settings_CreatePage(AfterID);
end;
