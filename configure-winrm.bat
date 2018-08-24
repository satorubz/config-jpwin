REM  JP config
ECHO Invoke-WebRequest -Uri https://raw.githubusercontent.com/satorubz/config-jpwin/master/Win2016_Japanese.bat -OutFile Win2016japanese.bat 
ECHO powershell -ExecutionPolicy RemoteSigned .\Win2016japanese.bat
ECHO powershell -ExecutionPolicy RemoteSigned .\Win2016japanese.bat  -SkipNetworkProfileCheck
REM  ANS config
ECHO Invoke-WebRequest -Uri https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -OutFile ConfigureRemotingForAnsible.ps1
ECHO powershell -ExecutionPolicy RemoteSigned .\ConfigureRemotingForAnsible.ps1
ECHO powershell -ExecutionPolicy RemoteSigned .\ConfigureRemotingForAnsible.ps1 -SkipNetworkProfileCheck



