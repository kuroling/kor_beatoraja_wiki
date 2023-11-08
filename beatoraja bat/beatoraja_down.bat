curl "https://mocha-repository.info/download/beatoraja0.8.6-modernchic.zip" --output "beatoraja0.8.6-modernchic.zip"
curl -LO  "https://corretto.aws/downloads/latest/amazon-corretto-21-x64-windows-jdk.zip" --output "jdk.zip"
curl "https://download2.gluonhq.com/openjfx/21.0.1/openjfx-21.0.1_windows-x64_bin-sdk.zip" --output "javafx.zip"
powershell Expand-Archive 'beatoraja0.8.6-modernchic.zip' -DestinationPath 'beatoraja/'
powershell Expand-Archive 'amazon-corretto-21-x64-windows-jdk.zip' -DestinationPath 'jdk/'
powershell Expand-Archive 'javafx.zip' -DestinationPath 'javafx/'
powershell Remove-Item -Force .\javafx.zip
powershell Remove-Item -Force .\amazon-corretto-21-x64-windows-jdk.zip
powershell Remove-Item -Force .\beatoraja0.8.6-modernchic.zip
cd .\beatoraja\beatoraja*
mkdir javafx-sdk
mkdir jdk
cd ..\..\
cd .\javafx\javafx*
powershell Move-Item .\* ..\..\beatoraja\beatoraja*\javafx-sdk
cd ..\..\
cd .\jdk\jdk*
powershell Move-Item .\* ..\..\beatoraja\beatoraja*\jdk
cd ..\..\
powershell Remove-Item -Force -Recurse .\javafx
powershell Remove-Item -Force -Recurse .\jdk
