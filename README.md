# OnboardingScript
This is a script I compiled to get the basic configurations out of the way on a windows 10/11 computer for client use.

Firstly this script was meant to be run on the Windows Out-of-Box Experience (OOBE) and put on an USB stick with a folder named installers that 
had anything you wanted the computer to come with.
The batch file will navigate to the D:\ drive automatically to copy the PowerShell script and the installers folder to the destination computer.
The installers folder will be put within another folder named "TEMP".
After copying the script and folders over, the batch file will begin to run the copied PowerShell script so you are free to unplug the USB stick.

The PowerShell portion of the script will do the following:
- Create an account that is assigned to "Administrators" group and ensures that the password never expires. (default login is admin/Temp1234!)
- This part is commented out but lines 26 to 38 will check for a TEMP folder on the C:\ drive and create one if necessary then download your RMM agent using a weblink. After that, it will begin to install the RMM agent.
- Lines 40 to 45 will set the sleep and monitor timeout settings to "Never".
- Lines 47 to 51 will disable Windows 10 fast boot through registry.
- Lines 53 to 1125 will run the windows updates and display a progress bar for the process. I did not write this portion of the script and sadly cannot credit anyone specifically except for the staff at SyncroMSP who posted it on their community library.
