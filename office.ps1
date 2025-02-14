New-Item -Path C:\ -Name "Temp" -ItemType Directory

Invoke-WebRequest -Uri 'https://github.com/guidoschaap43/aib/blob/9dcb930572419b8328fa3584a6926c96f8c1200f/setup.exe' -OutFile 'c:\temp\setup.exe'
Invoke-WebRequest -Uri 'https://github.com/guidoschaap43/aib/blob/9dcb930572419b8328fa3584a6926c96f8c1200f/officeconfig.xml' -OutFile 'c:\temp\officeconfig.xml'

Start-Sleep -Seconds 10

Start-Process -Wait -FilePath C:\temp\setup.exe -ArgumentList "/download c:\temp\officeconfig.xml"
Start-Process -Wait -FilePath C:\temp\setup.exe -ArgumentList "/configure c:\temp\officeconfig.xml"
