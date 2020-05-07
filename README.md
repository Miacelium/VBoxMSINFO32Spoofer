# VBoxMSINFO32Spoofer
Changes the the MSINFO32 of a windows VM in VirtualBox to not look like it's a Virtual Machine.


Description: This is a bash script changing the MSINFO32 of a Windows Virtual Machine within VirtualBox to appear more real for scam-baiting. I used https://github.com/Xela101/VirtualBoxSystemInformationModify as preset and converted it to bash.

How-To:

1. Poweroff the Virtual Machine.
2. Edit the script to have the name of your Virtual Machine.
3. Make the script executable with "chmod +x VBoxMSINFO32Spoofer.sh"
4. Execute the script with "./VBoxMSINFO32Spoofer.sh"
5. Start the VM and check if it successfully changed the MSINFO32
