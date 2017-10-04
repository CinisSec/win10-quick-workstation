<#
This script auto installs all the programs I need when using a computer for general purposes.

You need chocolatey to be able to run this script.
Install -> https://chocolatey.org/install

Packages: 	F.Lux			(Eye strain reducer)
			LibreOffice		(Office)
			Calibre			(E-book management)
			Slack			(Chatting hub) -> To be removed soon
			Google Chrome	(Web Browser)
			Adobe Reader DC	(Pdf reader)
			VLC				(Media Player)
			

#>
choco install f.lux libreoffice calibre slack googlechrome adobereader vlc -y
