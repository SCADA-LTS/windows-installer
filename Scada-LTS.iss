; Innacio - The Scada-LTS Windows installer

#define MyAppName "Scada-LTS"
#define MyAppVersion "2.6.18"
#define MyAppURL "http://scada-lts.com/"
#define MyAppFolder "C:/Users/Kamil Jarmusik/IdeaProjects/windows-installer-2/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0E856116-C05F-4AEB-A24A-19B20DFE407A}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName=Scada-LTS v2.6.18
AppComments=Scada-LTS is a free and open-source SCADA software
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile={#MyAppFolder}\License.rtf
SetupIconFile={#MyAppFolder}\scadalts.ico
OutputDir={#MyAppFolder}\bin
OutputBaseFilename=ScadaLTS_Setup_Windows
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=capa.bmp
WizardSmallImageFile=logo.bmp
DisableWelcomePage=False
UninstallDisplayIcon={app}\scadalts.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
; 32-bit Tomcat
Source: "tomcat32\*"; DestDir: "{app}\tomcat"; Flags: ignoreversion createallsubdirs recursesubdirs; Check: not Is64BitInstallMode
; 64-bit Tomcat
Source: "tomcat64\*"; DestDir: "{app}\tomcat"; Flags: ignoreversion createallsubdirs recursesubdirs; Check: Is64BitInstallMode
; Scada-LTS WebApp
Source: "Scada-LTS.war"; DestDir: "{app}\tomcat\webapps"; Flags: ignoreversion;
Source: "scadalts.ico"; DestDir: "{app}"; Flags: ignoreversion
; Documentação
Source: "ManualScadaBR.pdf"; DestDir: "{app}\docs"; Flags: ignoreversion
Source: "ManuelScadaBR.pdf"; DestDir: "{app}\docs"; Flags: ignoreversion
; Arquivos para configuração do Tomcat
Source: "install_scadalts.bat"; DestDir: "{app}\tomcat\bin"; Flags: ignoreversion
Source: "server.xml"; DestDir: "{app}\tomcat\conf"; Flags: ignoreversion;
Source: "tomcat-users.xml"; DestDir: "{app}\tomcat\conf"; Flags: ignoreversion; Check: ShouldCreateTomcatUser

[CustomMessages]
; Tradução em português
brazilianportuguese.Tomcat_Settings_Label_Port_Caption0=Porta HTTP do Tomcat:
brazilianportuguese.Tomcat_Settings_Label_TomcatUser_Caption0=Criar usuário para o Tomcat Manager (opcional):
brazilianportuguese.Tomcat_Settings_Label_Username_Caption0=Nome de Usuário:
brazilianportuguese.Tomcat_Settings_Label_Password_Caption0=Senha:
brazilianportuguese.Tomcat_Settings_Label_TomcatSettings_Caption0=Utilize os campos abaixo para alterar as configurações do Apache Tomcat.
brazilianportuguese.Tomcat_Settings_Edit_Port_Text0=8080
brazilianportuguese.Tomcat_Settings_Caption=Configurações do Tomcat
brazilianportuguese.Tomcat_Settings_Description=Configurar o Apache Tomcat utilizado no Scada-LTS
brazilianportuguese.Tomcat_Settings_Invalid_Port=Porta HTTP inválida!
brazilianportuguese.Tomcat_Settings_User_Fields_Missing=O campo "Nome de usuário" ou "Senha" está vazio!
brazilianportuguese.Java_Settings_Caption=Configurações da Máquina Virtual Java
brazilianportuguese.Java_Settings_Description=Configurar a Máquina Virtual Java utilizada no Scada-LTS
brazilianportuguese.Java_Settings_Select_JRE=Por favor selecione o caminho do JRE 8 instalado no seu sistema. Note que se você possuir sistema operacional 64-bit, você deve especificar um caminho JRE 64-bit válido:
brazilianportuguese.Java_Settings_Folder=Pasta:
brazilianportuguese.Java_Settings_Invalid_JRE=O caminho especificado não é um JRE válido!
brazilianportuguese.Installing_Service=Instalando serviço do Windows...
brazilianportuguese.Configuring_Tomcat=Configurando Tomcat...
brazilianportuguese.Changing_Folder_Permissions=Alterando permissões de pasta...
brazilianportuguese.Run_ScadaLTS_Now=Executar o Scada-LTS agora
brazilianportuguese.Delete_Config=Remover todos os arquivos do Scada-LTS ? (Se você tem algo que criou que deseja manter, clique em Não)

; Tradução em espanhol
spanish.Tomcat_Settings_Label_Port_Caption0=Puerto HTTP de Tomcat:
spanish.Tomcat_Settings_Label_TomcatUser_Caption0=Crear usuario para Tomcat Manager (opcional):
spanish.Tomcat_Settings_Label_Username_Caption0=Nombre de Usuario:
spanish.Tomcat_Settings_Label_Password_Caption0=Contraseña:
spanish.Tomcat_Settings_Label_TomcatSettings_Caption0=Utilice los campos abajo para cambiar las configuraciones de Apache Tomcat.
spanish.Tomcat_Settings_Edit_Port_Text0=8080
spanish.Tomcat_Settings_Caption=Configuraciones de Tomcat
spanish.Tomcat_Settings_Description=Configurar Apache Tomcat utilizado en Scada-LTS
spanish.Tomcat_Settings_Invalid_Port=Puerto HTTP inválido!
spanish.Tomcat_Settings_User_Fields_Missing=El campo "Nombre de usuario" o "Contraseña" está vacío!
spanish.Java_Settings_Caption=Configuraciones de la Máquina Virtual Java
spanish.Java_Settings_Description=Configurar la Máquina Virtual Java utilizada en Scada-LTS
spanish.Java_Settings_Select_JRE=Por favor, seleccione la ruta del JRE 8 instalado en su sistema. Note que si usted posee sistema operacional 64-bit, debe especificar la ruta de un JRE 64-bit válido:
spanish.Java_Settings_Folder=Carpeta:
spanish.Java_Settings_Invalid_JRE=La ruta especificada no es un JRE válido!
spanish.Installing_Service=Instalando servicio de Windows...
spanish.Configuring_Tomcat=Configurando Tomcat...
spanish.Changing_Folder_Permissions=Cambiando permisos de carpeta... 
spanish.Run_ScadaLTS_Now=Ejecutar Scada-LTS ahora
spanish.Delete_Config=Desea eliminar todos los archivos en el directorio de Scada-LTS? (Si usted tiene algo haya creado y desea mantener, haga clic en No)

; Tradução em inglês
english.Tomcat_Settings_Label_Port_Caption0=Tomcat HTTP Port:
english.Tomcat_Settings_Label_TomcatUser_Caption0=Create user for Tomcat Manager (optional):
english.Tomcat_Settings_Label_Username_Caption0=Username:
english.Tomcat_Settings_Label_Password_Caption0=Password:
english.Tomcat_Settings_Label_TomcatSettings_Caption0=Use the fields below to change Apache Tomcat settings.
english.Tomcat_Settings_Edit_Port_Text0=8080
english.Tomcat_Settings_Caption=Tomcat Settings
english.Tomcat_Settings_Description=Configure Apache Tomcat used in Scada-LTS
english.Tomcat_Settings_Invalid_Port=Invalid HTTP Port!
english.Tomcat_Settings_User_Fields_Missing=The "Username" or "Password" field is empty!
english.Java_Settings_Caption=Java Virtual Machine Settings
english.Java_Settings_Description=Configure the Java Virtual Machine used in Scada-LTS
english.Java_Settings_Select_JRE=Please select the path of a JRE 8 installed on your system. Note that if you have a 64-bit operating system, you must specify a 64-bit JRE:
english.Java_Settings_Folder=Folder:
english.Java_Settings_Invalid_JRE=The specified path is not a valid JRE!
english.Installing_Service=Installing Windows service...
english.Configuring_Tomcat=Configuring Tomcat...
english.Changing_Folder_Permissions=Changing folder permissions...
english.Run_ScadaLTS_Now=Run Scada-LTS now
english.Delete_Config=Remove all files in your Scada-LTS directory ? (If you have anything you created that you want to keep, click No)

[Run]
; Criação do Serviço Windows
Filename: "{cmd}"; Parameters: "/c install_scadalts.bat install Scada-LTS --rename && timeout /t 2"; WorkingDir: "{app}\tomcat\bin\"; Flags: runhidden; StatusMsg: "{cm:Installing_Service}"
Filename: "{app}\tomcat\bin\Scada-LTS.exe"; Parameters: "//US//Scada-LTS --DisplayName ""Scada-LTS - Apache Tomcat"" --Description ""Scada-LTS service, powered by Apache Tomcat"" --Startup auto --Jvm ""{code:GetJVMDll|jre}"" --JvmOptions ""-Dfile.encoding=UTF-8;-Djavax.servlet.request.encoding=UTF-8;-Dcatalina.home={app}\tomcat;-Dcatalina.base={app}\tomcat;-Djava.io.tmpdir={app}\tomcat\temp;-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager;-Djava.util.logging.config.file={app}\tomcat\conf\logging.properties"""; WorkingDir: "{app}\tomcat\bin\"; Flags: runhidden; StatusMsg: "{cm:Installing_Service}"
; Alterar permissões de pasta
Filename: "{cmd}"; Parameters: "/c icacls ""{app}"" /grant *S-1-5-19:(OI)(CI)M /T"; Flags: runhidden; StatusMsg: "{cm:Changing_Folder_Permissions}"
; Alteração da porta HTTP
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\server.xml') | Foreach-Object {{$_ -replace '<tomcat-port>', '{code:GetInstallSettings|port}'} | Set-Content '{app}\tomcat\conf\server.xml'"" "; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}"
; Criação de usuários do tomcat-manager
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\tomcat-users.xml') | Foreach-Object {{$_ -replace '<user-name>', '{code:GetInstallSettings|username}'} | Set-Content '{app}\tomcat\conf\tomcat-users.xml'"" "; Check: ShouldCreateTomcatUser; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}" 
Filename: "powershell.exe"; Parameters: "-NoProfile -Command ""(Get-Content '{app}\tomcat\conf\tomcat-users.xml') | Foreach-Object {{$_ -replace '<user-password>', '{code:GetInstallSettings|password}'} | Set-Content '{app}\tomcat\conf\tomcat-users.xml'"" ";  Check: ShouldCreateTomcatUser; Flags: runhidden; StatusMsg: "{cm:Configuring_Tomcat}"
; Iniciar serviço do Scada-LTS
;Filename: "{app}\tomcat\bin\Scada-LTS.exe"; Parameters: "start"; Flags: postinstall runascurrentuser runhidden nowait;
Filename: "{cmd}"; Parameters: "/c net start Scada-LTS"; Description: {cm:Run_ScadaLTS_Now}; Flags: postinstall runascurrentuser runhidden nowait;

[UninstallRun]
; Remoção do Serviço Windows
Filename: "{app}\tomcat\bin\Scada-LTS.exe"; Parameters: "//DS//Scada-LTS"; Flags: runhidden; RunOnceId: "DelTomcatService"

[UninstallDelete]
Type: filesandordirs; Name: "{app}\tomcat\bin\Scada-LTS.exe"
Type: filesandordirs; Name: "{app}\tomcat\bin\Scada-LTSw.exe"
Type: filesandordirs; Name: "{app}\tomcat\bin"
Type: filesandordirs; Name: "{app}\tomcat\logs"
Type: filesandordirs; Name: "{app}\tomcat\temp"

[Messages]
BeveledLabel=www.scada-lts.com

[Icons]
Name: "{group}\Manual - Português"; Filename: "{app}\docs\ManualScadaBR.pdf"
Name: "{group}\Manuel - Français"; Filename: "{app}\docs\ManuelScadaBR.pdf"
Name: "{group}\Scada-LTS"; Filename: "http://localhost:{code:GetInstallSettings|port}/Scada-LTS"; IconFilename: "{app}\scadalts.ico"
Name: "{group}\Scada-LTS service manager"; Filename: "{app}\tomcat\bin\Scada-LTSw.exe"
Name: "{commondesktop}\Scada-LTS"; Filename: "http://localhost:{code:GetInstallSettings|port}/Scada-LTS"; IconFilename: "{app}\scadalts.ico"
Name: "{commondesktop}\Scada-LTS service manager"; Filename: "{app}\tomcat\bin\Scada-LTSw.exe"

[Code]
var
  // Controles de formulário
  Label_Port: TLabel;
  Label_TomcatUser: TLabel;
  Label_Username: TLabel;
  Label_Password: TLabel;
  Label_TomcatSettings: TLabel;
  Edit_Port: TEdit;
  Edit_Username: TEdit;
  Edit_Password: TEdit;
  // Variáveis para acessar conteúdo das páginas criadas
  Java_Settings_PageID: Integer;
  Java_Settings_Page: TInputDirWizardPage;
  // Variáveis para armazenar os dados inseridos
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


{ Testar se deve ser criado um usuário para o Tomcat Manager }
function ShouldCreateTomcatUser(): Boolean;
begin
  Result := False;
  if (Trim(Tomcat_Username) <> '') and (Trim(Tomcat_Password) <> '') then
    Result := True;
end;

{ Remover configurações do usuário, com confirmação }
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usPostUninstall then
  begin
    if MsgBox(ExpandConstant('{cm:Delete_Config}'), mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = IDYES then
      DelTree(ExpandConstant('{app}'), True, True, True);
  end;
end;

{ Recuperar os dados informados pelo usuário }
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

{ Esta função é usada na validação dos dados da página de configuração do Java }
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

{ Criação da página de configuração do Java }
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

{ Esta função valida os dados na página de configuração do Tomcat }
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

{ Criação da página de configuração do Tomcat }
function Tomcat_Settings_CreatePage(PreviousPageId: Integer): Integer;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(
    PreviousPageId,
    ExpandConstant('{cm:Tomcat_Settings_Caption}'),
    ExpandConstant('{cm:Tomcat_Settings_Description}')
  );

  { Criação das entradas de formulário da página }
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

{ Este procedimento é chamado ao iniciar o Inno Setup }
procedure InitializeWizard();
var
  AfterID: Integer;
begin
  AfterID := wpSelectTasks;  
  AfterID := Java_Settings_CreatePage(AfterID);
  AfterID := Tomcat_Settings_CreatePage(AfterID);
end;
