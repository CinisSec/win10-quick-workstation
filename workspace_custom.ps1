<#
This script auto installs all the programs I need when using a computer for general purposes.

You need chocolatey to be able to run this script.
Install -> https://chocolatey.org/install

Packages: 	F.Lux			(Eye strain reducer)
			LibreOffice		(Office)
			7Zip			(Archiving)
			Calibre			(E-book management)
			Git				(Version Control)
			Slack			(Chatting hub) -> To be removed soon
			Google Chrome	(Web Browser)
			Adobe Reader DC	(Pdf reader)
			VLC				(Media Player)
			OpenSSH			(SSH)
			Vim 			(Text Editor)
			Sudo 			(launch a command in cmd/powershell as admin)
			

#>
choco install f.lux libreoffice 7zip calibre git slack googlechrome adobereader vlc openssh vim sudo -y
