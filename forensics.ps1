$v_autopsy="autopsy-4.4.1"

choco install sleuthkit radare shellbagsexplorer timelineexplorer -y
#Downloading & installing Autopsy (msi)
$choice= Read-Host -Prompt "Would you like to download $v_autopsy?(y/n)"
switch ($choice)
	{
		'n' {"$v_autopsy won't be downloaded"}
		'y' {"v_autopsy will be downloaded & stored in FOR_installers"}
        default {"Error, couldn't define choice"}
	}
wget https://github.com/sleuthkit/autopsy/releases/download/$v_autopsy/$v_autopsy-64bit.msi
Start-Process msiexec.exe -ArgumentList "/I $v_autopsy-64bit.msi /quiet" -Wait
rm $v_autopsy-64bit.msi
echo "$v_autopsy has been installed"
#Installers download (non-msi)
echo "You can now download the installers for: Last Activity View, HxD & Maltego"
$choice= Read-Host -Prompt "Would you like to download the extra installers?(y/n)"
switch ($choice)
	{
		'n' {"Installers won't be downloaded"}
		'y' {"Installers will be downloaded & stored in FOR_installers"}
        default {"Error, couldn't define choice"}
	}
mkdir FOR_installers
wget http://www.nirsoft.net/utils/lastactivityview.zip -O .\FOR_installers\lastactivityview.zip
wget http://mh-nexus.de/downloads/HxDSetupEN.zip -O .\FOR_installers\HxDSetupEN.zip
wget https://www.paterva.com/malv41/maltego.JRE64_v4.1.0.10552.exe -O .\FOR_installers\maltego.JRE64_v4.1.0.10552.exe