ECHO Start-Transcript -path "C:\Users\Administrator\Desktop\enable_winrm.log" -append >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Invoke-WebRequest -Uri https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1
ECHO powershell -ExecutionPolicy RemoteSigned .\ConfigureRemotingForAnsible.ps1 -SkipNetworkProfileCheck

ECHO Stop-Transcript >>C:\Users\Administrator\Desktop\enable_winrm.ps1
ECHO Restart-Computer -Force >> C:\Users\Administrator\Desktop\enable_winrm.ps1
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Unrestricted C:\Users\Administrator\Desktop\enable_winrm.ps1
