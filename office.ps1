New-Item -Path C:\ -Name "Temp" -ItemType Directory

Invoke-WebRequest -Uri 'https://stravdsystem.blob.core.windows.net/aib/Installers/setup.exe' -OutFile 'c:\temp\setup.exe'
Invoke-WebRequest -Uri 'https://stravdsystem.blob.core.windows.net/aib/Installers/OfficeConfig.xml' -OutFile 'c:\temp\officeconfig.xml'

Start-Sleep -Seconds 10

Start-Process -Wait -FilePath C:\temp\setup.exe -ArgumentList "/download c:\temp\officeconfig.xml"
Start-Process -Wait -FilePath C:\temp\setup.exe -ArgumentList "/configure c:\temp\officeconfig.xml"