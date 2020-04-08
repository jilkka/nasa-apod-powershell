# NASA Astronomy Photo of the Day via PowerShell
## Set NASA's Astronomy Photo of the Day as your desktop background using PowerShell

### Note: 
Chose location where to place the script
1. Create a folder where to place the script, eg: C:\User\Peter\APOD\
2. Place the powershell script into newly created folder^^
3. Edit the script file on line 8 and 11 to replace with the correct path to script file location; Replace "\<UserAccount\>" with your real account name.

Before being able to run this script without using ISE, you will need to set the execution policy. 
1. Run PowerShell ISE as Administrator
2. Run the following command to unblock the script: 
	- _Unblock-File -Path c:\Path\to\script.ps1_
3. Run the following command to allow the script to run: 
	- _Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine_

### You can set this to run each time you login to the machine, for exmample every morning. 
1. Open Task Scheduler
2. Create a new local task
3. Give it a name and description; _APOD Wallpaper_, for example.
4. Set a trigger as desired, _When I log in_ for example.
5. Start a program: 
	- _powershell.exe C:\path\to\script.ps1_
6. Test it out. 
