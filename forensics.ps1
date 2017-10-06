$v_autopsy="autopsy-4.4.1"

choco install sleuthkit radare shellbagsexplorer timelineexplorer -y
wget https://github.com/sleuthkit/autopsy/releases/download/$v_autopsy/$v_autopsy-64bit.msi
Start-Process msiexec.exe -ArgumentList "/I $v_autopsy-64bit.msi /quiet" -Wait
rm $v_autopsy-64bit.msi
echo "$v_autopsy has been installed"
mkdir FOR_installers
cd FOR_installers
wget http://www.nirsoft.net/utils/lastactivityview.zip
wget http://mh-nexus.de/downloads/HxDSetupEN.zip