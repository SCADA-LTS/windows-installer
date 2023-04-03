
# Scada-LTS
Installer for Scada-LTS developed with Inno Setup.

If you are looking for the Scada-LTS installer `.exe` file, see the [Scada-LTS repository releases](https://github.com/SCADA-LTS/Scada-LTS/releases/latest).

The main installer script (`Scada-LTS.iss`) may be modified and adapted under the terms of the MIT license. The other files in this repository (Tomcat, Scada-LTS Builds, etc) have different licenses.

Feel free to _fork_ this repository and create installers for your own versions of Scada-LTS.

# Version v1.0.4 - Table of content
1. [Installation before running the installer](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#1-installation-before-running-the-installer---up)
* 1.1 [Java (Required)](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#11-java-required---up)
* 1.2 [Client MySQL - Dbeaver (Optional)](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#12-client-mysql---dbeaver-optional---up)
2. [Run installer v1.0.4](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#2-run-installer-v104---up)

# 1. Installation before running the installer - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#version-v104---table-of-content)
| Technology | Version | Description |
| :--- | :---: | --- |
| Java | 11 | Base programic language |
| Dbeaver | 23.0.1 | Database client |

## 1.1 Java (Required) - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#version-v104---table-of-content)
&nbsp;&nbsp;&nbsp;&nbsp;The base project is written in Java. So to start development a new features to Scada-LTS you need to install Java Development Kit (JDK). You can do that easily by downloading the valid version from the [jdk.java.net](https://jdk.java.net/java-se-ri/11) website. Then you only need to extract that file and set-up the PATH variable to */bin* directory.

- For windows download version from [openjdk-11+28_windows-x64_bin.zip](https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip)
- Extract that file in location where you want to keep your Java binaries  
  *(for example C:\services\java\jdk-11)*  
- Set-up the PATH environment variable to bin directory of your installation location  
  *(for example C:\services\java\jdk-11\bin)*  
- Verify that Java is installed correctly, open your terminal and type `java -version`

## 1.2. Client MySQL - Dbeaver (Optional) - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#version-v104---table-of-content)

 1. Download [dbeaver-ce-latest-x86_64-setup.exe](https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe) and install;
 2. Run dbeaver, and click on 'New Database Connection':

 ![Screenshot 2023-03-25 at 20 52 40](https://user-images.githubusercontent.com/35842300/227738616-855f704c-d034-48e9-8372-2a2a88a116b7.png)
 
 3. Select MySQL and click 'Next':
 
![db_screen_1](https://user-images.githubusercontent.com/35842300/229563933-ae8ebae0-e4c4-4267-8cd4-aa62a825839f.png)
 
 4. Set port 3308 and click on 'Finish'. If the drivers have not been installed before, the program will suggest downloading and installing, click ok:
 
![db_screen_2](https://user-images.githubusercontent.com/35842300/229563990-11de75f8-86a8-40f5-b3cd-04e0ae417717.png)

## 2. Run installer v1.0.4 - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#version-v104---table-of-content)
Download [ScadaLTS_v2.6.18_Standalone_Setup.exe](https://github.com/SCADA-LTS/windows-installer/releases/download/v1.0.4/ScadaLTS_v2.6.18_Standalone_Setup.exe) and run;

# Old version <= v1.0.3 - Table of content
1. [Required installation before running the installer](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#1-required-installation-before-running-the-installer---up)
* 1.1 [Java](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#11-java---up)
* 1.2 [Server MySQL](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#12-server-mysql---up)
* 1.3 [Client MySQL - Dbeaver](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#13-client-mysql---dbeaver---up)
2. [Run installer](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#2-run-installer---up)
3. [Config Tomcat after running the installer](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#3-config-tomcat-after-running-the-installer---up)

# 1. Required installation before running the installer - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)
| Technology | Version | Description |
| :--- | :---: | --- |
| Java | 11 | Base programic language |
| MySQL | 5.7/8.0 | Database server for data persistence |
| Dbeaver | 23.0.0 | Database client |

## 1.1 Java - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)
&nbsp;&nbsp;&nbsp;&nbsp;The base project is written in Java. So to start development a new features to Scada-LTS you need to install Java Development Kit (JDK). You can do that easily by downloading the valid version from the [jdk.java.net](https://jdk.java.net/java-se-ri/11) website. Then you only need to extract that file and set-up the PATH variable to */bin* directory.

- For windows download version from [openjdk-11+28_windows-x64_bin.zip](https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip)
- Extract that file in location where you want to keep your Java binaries  
  *(for example C:\services\java\jdk-11)*  
- Set-up the PATH environment variable to bin directory of your installation location  
  *(for example C:\services\java\jdk-11\bin)*  
- Verify that Java is installed correctly, open your terminal and type `java -version`

## 1.2. Server MySQL - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)
&nbsp;&nbsp;&nbsp;&nbsp;MySQL must be matching the provided version. If not there will be a problem with establishing the connection from the Scada-LTS application.

 - Use dedicated [installer](https://dev.mysql.com/downloads/file/?id=471660)
 - Configure default password to "rootroot" user: "root". 

## 1.3. Client MySQL - Dbeaver - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)

 1. Download [dbeaver-ce-latest-x86_64-setup.exe](https://dbeaver.io/files/dbeaver-ce-latest-x86_64-setup.exe) and install;
 2. Run dbeaver, and click on 'New Database Connection':

 ![Screenshot 2023-03-25 at 20 52 40](https://user-images.githubusercontent.com/35842300/227738616-855f704c-d034-48e9-8372-2a2a88a116b7.png)
 
 3. Select MySQL and click 'Next':
 
 ![Screenshot 2023-03-25 at 20 55 03](https://user-images.githubusercontent.com/35842300/227738741-895120c7-9c71-4c53-bd29-bb8184afe8e8.png)
 
 4. Set Password rootroot and click on 'Finish':
 
 ![Screenshot 2023-03-25 at 20 56 49](https://user-images.githubusercontent.com/35842300/227738802-b92ef2ca-e818-496b-a03e-e3ec98d6cf07.png)

 5. Click on 'Create New Database':

 ![Screenshot 2023-03-25 at 20 59 13](https://user-images.githubusercontent.com/35842300/227738880-3d04faca-546a-4c96-967e-7fc276233db2.png)

 6. Set name "scadalts" and click 'ok':
 
 ![Screenshot 2023-03-25 at 21 00 03](https://user-images.githubusercontent.com/35842300/227738907-3e0a61fc-d0bb-47ee-bddc-e4a30b7e2741.png)

## 2. Run installer - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)
Download [ScadaLTS_v2.6.18_Setup.exe](https://github.com/SCADA-LTS/windows-installer/releases/download/v1.0.2/ScadaLTS_v2.6.18_Setup.exe) and run;

## 3. Config Tomcat after running the installer - [up](https://github.com/SCADA-LTS/windows-installer/blob/master/README.md#old-version--v103---table-of-content)
1. Tomcat stopped;
2. Change password on "rootroot" in file context.xml, default path: 
`C:\Program Files\Scada-LTS\tomcat\conf\context.xml` :
![Screenshot 2023-03-25 at 19 46 29|320](https://user-images.githubusercontent.com/35842300/227735742-57ab537a-5d9c-4d85-887b-66fc0ac7d789.png)
3. Started tomcat and it worked perfectly in the url:
`http://localhost:8080/Scada-LTS`

