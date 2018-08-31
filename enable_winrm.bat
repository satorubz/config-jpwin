ECHO Start-Transcript -path "C:\Users\Administrator\Desktop\enable_winrm.log" -append >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Invoke-WebRequest -Uri https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1 >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Get-NetConnectionProfile | where InterfaceAlias -eq PrivateNetwork-A| Set-NetConnectionProfile -NetworkCategory Private >>C:\Users\Administrator\Desktop\enable_winrm.ps1 
ECHO Get-NetConnectionProfile  >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO powershell -ExecutionPolicy RemoteSigned .\ConfigureRemotingForAnsible.ps1 -SkipNetworkProfileCheck >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Stop-Transcript >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Restart-Computer -Force >> C:\Users\Administrator\Desktop\enable_winrm.ps1
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Unrestricted C:\Users\Administrator\Desktop\enable_winrm.ps1
