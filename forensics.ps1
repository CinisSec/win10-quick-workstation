<#
This script auto installs all the programs I need when using a computer for dev purposes.

You need chocolatey to be able to run this script.
Install -> https://chocolatey.org/install

Packages: 	Sleuthkit
			Radare2
			Shellbagsexplorer
			TimelineExplorer
			

#>

$v_autopsy=autopsy-4.4.1

choco install sleuthkit radare shellbagsexplorer timelineexplorer 
wget https://github.com/sleuthkit/autopsy/releases/download/$v_autopsy/$v_autopsy-64bit.msi
Start-Process msiexec.exe -ArgumentList "/I $v_autopsy-64bit.msi /quiet" -Wait
rm $v_autopsy-64bit.msi