
# Scada-LTS
Installer for Scada-LTS developed with Inno Setup.

If you are looking for the Scada-LTS installer `.exe` file, see the [Scada-LTS repository releases](https://github.com/SCADA-LTS/Scada-LTS/releases/latest).

The main installer script (`Scada-LTS.iss`) may be modified and adapted under the terms of the MIT license. The other files in this repository (Tomcat, Scada-LTS Builds, etc) have different licenses.

Feel free to _fork_ this repository and create installers for your own versions of Scada-LTS.

# Table of Contents
- [Tools Installation]()
  - [Java]()
  - [MySQL]()
  - [Tomcat]()
- [Scada-LTS start]()

# Current technology stack table:
| Technology | Version | Description |
| :--- | :---: | --- |
| Java | 11 | Base programic language |
| MySQL | 5.7/8.0 | Database server for data persistence |

## Java
&nbsp;&nbsp;&nbsp;&nbsp;The base project is written in Java. So to start development a new features to Scada-LTS you need to install Java Development Kit (JDK). You can do that easily by downloading the valid version from the [jdk.java.net](https://jdk.java.net/java-se-ri/11) website. Then you only need to extract that file and set-up the PATH variable to */bin* directory.
### Windows
- For windows download version from [openjdk-11+28_windows-x64_bin.zip](https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip)
- Extract that file in location where you want to keep your Java binaries  
  *(for example C:\services\java\jdk-11)*  
- Set-up the PATH environment variable to bin directory of your installation location  
  *(for example C:\services\java\jdk-11\bin)*  
- Verify that Java is installed correctly, open your terminal and type `java -version`

## MySQL
&nbsp;&nbsp;&nbsp;&nbsp;MySQL must be matching the provided version. If not there will be a problem with establishing the connection from the Scada-LTS application.
### Windows 
 - Use dedicated [installer](https://dev.mysql.com/downloads/file/?id=471660)
 - Configure default password to "rootroot" user: "root". 
 - Create a new database with name: "scadalts".
 
## Tomcat 
- Default path:
`C:\Program Files\Scada-LTS\tomcat\conf\context.xml`
- Change password on "rootroot":
![Screenshot 2023-03-25 at 19 46 29|320](https://user-images.githubusercontent.com/35842300/227735742-57ab537a-5d9c-4d85-887b-66fc0ac7d789.png)

## Start
- I started tomcat and it worked perfectly in the url:

`http://localhost:8080/Scada-LTS`
