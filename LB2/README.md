# Einleitung
In diesem Projekt wird die Cloud-Software [OwnCloud](https://owncloud.com/) auf einem Docker Host deployed.

Folgende [Anleitung](https://doc.owncloud.com/server/next/admin_manual/installation/docker/#docker-compose) dient als Leitfaden bei der Installation.

# Inhaltsverszeichnis


## Service-Aufbau 
Unsere Infrastruktur beinhaltet eine bereits installierte VM, welche von der TBZ bereitgestellt wird. Mittels Wireguard VPN ist es möglich, sich auf die VM zu verbinden auf SSH Basis. Auf der VM werden wir anschliessend unsere Docker Container hochfahren und verwalten. Die Container betreiben die Cloud-Software Owncloud, welche gleichzeitig auch als Kollaborationssoftware dient. 

## Umsetzung
wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/setup.sh && chmod 777 setup.sh && ./setup.sh

## Testing
Text

## Quellen
Text