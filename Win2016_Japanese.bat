REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager" /v DoNotOpenServerManagerAtLogon >> C:\Users\Administrator\Desktop\log.txt
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager" /v DoNotOpenServerManagerAtLogon /t REG_DWORD /d 1 /f >> C:\Users\Administrator\Desktop\log.txt
REG QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager" /v DoNotOpenServerManagerAtLogon >> C:\Users\Administrator\Desktop\log.txt
ECHO Start-Transcript -path "C:\Users\Administrator\Desktop\ProvScript.log" -append >>C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO [System.Environment]::Is64BitProcess >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO $LpUrl = "http://fg.v4.download.windowsupdate.com/c/msdownload/update/software/updt/2016/09/" >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO $LpFile = "lp_9a666295ebc1052c4c5ffbfa18368dfddebcd69a.cab" >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO $LpTemp = "C:\Users\Administrator\Desktop\lp_9a666295ebc1052c4c5ffbfa18368dfddebcd69a.cab" >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Start-BitsTransfer -Source $LpUrl$LpFile -Destination $LpTemp -Priority High >> C:\Users\Administrator\Desktop\ProvScript.ps1
REM ECHO Disable-NetAdapter -Name "PublicNetwork-A" -Confirm:$false >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Set-WinUserLanguageList -LanguageList ja-JP,en-US -Force >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Add-WindowsPackage -PackagePath $LpTemp -Online >> C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Start-Transcript -path "C:\Users\Administrator\Desktop\SetupLang.log" -append >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO [System.Environment]::Is64BitProcess >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinUILanguageOverride -Language ja-JP >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinLanguageBarOption -UseLegacySwitchMode >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinDefaultInputMethodOverride -InputTip "0411:00000411"  >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinLanguageBarOption -UseLegacySwitchMode -UseLegacyLanguageBar >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinSystemLocale -SystemLocale ja-JP >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinHomeLocation -GeoId 0x7A >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-WinCultureFromLanguageListOptOut -OptOut $False >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-TimeZone -Id "Tokyo Standard Time" >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Set-ItemProperty -Path "registry::\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "AutoAdminLogon" -Value "0" >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Remove-ItemProperty -Path "registry::\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "DefaultUserName" >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Remove-ItemProperty -Path "registry::\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "DefaultPassword" >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager" /v DoNotOpenServerManagerAtLogon /t REG_DWORD /d 1 /f >> C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Stop-Transcript >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO Restart-Computer -Force >>C:\Users\Administrator\Desktop\SetupLang.ps1
ECHO $ComputerName = $env:COMPUTERNAME >>C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" -Name "SetupLang" -Value "powershell -NoProfile -ExecutionPolicy Unrestricted C:\Users\Administrator\Desktop\SetupLang.ps1" >>C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Stop-Transcript >>C:\Users\Administrator\Desktop\ProvScript.ps1
ECHO Restart-Computer -Force >> C:\Users\Administrator\Desktop\ProvScript.ps1
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Unrestricted C:\Users\Administrator\Desktop\ProvScript.ps1
