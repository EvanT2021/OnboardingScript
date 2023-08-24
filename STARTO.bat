cd /d D:\
TIMEOUT /T 3
copy OnboardingScript.PS1 C:\
TIMEOUT /T 3
Xcopy D:\Installers C:\TEMP /V /S /Y /J /Z
TIMEOUT /T 3
PowerShell.exe -ExecutionPolicy Unrestricted -command "C:\OnboardingScript.PS1"