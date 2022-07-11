# Einleitung
In diesem Projekt wird die Cloud-Software [OwnCloud](https://owncloud.com/) auf einem Docker Host deployed.

Folgende [Anleitung](https://doc.owncloud.com/server/next/admin_manual/installation/docker/#docker-compose) dient als Leitfaden bei der Installation.

# Inhaltsverszeichnis


## Service-Aufbau
In diesem Abschnitt wird beschrieben wie die Infrastruktur aufgebaut ist und welche Voraussetzungen für das System benötigt werden.

### Allgemeine Informationen
Unsere Infrastruktur beinhaltet eine bereits installierte Ubuntu VM, welche von der TBZ bereitgestellt wird. Mittels Wireguard VPN ist es möglich, sich auf die VM zu verbinden auf SSH Basis. Auf der VM werden wir anschliessend unsere Docker Container hochfahren und verwalten. Die Container betreiben die Cloud-Software Owncloud, welche gleichzeitig auch als Kollaborationssoftware dient.

### Systemvoraussetzungen
Bevor die Einrichtung in Angriff genommen kann, sollte im Voraus das Betriebssystem und alle Pakete auf die neuste Version aktualisiert werden.

`apt-get update && apt-get upgrade`

## Umsetzung
Hier beschreiben wir die Umsetzung Schritt für Schritt.

### Vorarbeit
Die Vorarbeit bezeichnet die Schritte, welche nur getätigt werden müssen, wenn das Image erst gebaut werden soll.

#### Eigenes Image erstellen
Für ein eigenständiges Image auf Owncloud Basis, haben wir Online auf Docker Hub ein Repository mit Owncloud erstellt. Dort drin wird dann anschliessend unser Image zu finden sein. Für das Erstellen des Images pullen wir zuerst das originale Owncloud Image mit:<br>
`docker pull owncloud/server`

Dann muss die benutzerdefinierte Version erstellt werden:<br>
`docker tag owncloud/server altinmaliqaj/owncloud`

Zu guter letzt muss das Image noch hochgeladen werden:<br>
`docker push altinmaliqaj/owncloud`

Nun ist unser Image mit dem nachfolgendem Befehl möglich zu pullen:<br>
`docker pull altinmaliqaj/owncloud`

#### Konfiguration der Container definieren
Die folgenden Schritte haben wir in diesem [Skript](/LB2/files/setup.sh) zusammengefasst. Hier werden diese Schritte nochmals aufgelistet und erklärt.

Wir erstellen einen neuen Ordner für unser Projekt:<br>
`mkdir owncloud-docker-server`

Wir springen in den Ordner:<br>
`cd owncloud-docker-server`

Nun kopieren wir die [docker-compose.yml](/LB2/files/docker-compose.yml) Datei in unseren neuen Ordner. Hier werden alle Parameter gesetzt, welche notwendig sind für das Pullen der Images und das Erstellen der Container.<br>
`wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/docker-compose.yml`

Ebenfalls kopieren wir die [Environment](/LB2/files/.env) Konfigurationsdatei. In dieser Datei können wir folgende Parameter auflisten:

| Parameter | Beschreibung | Beispiel |
| --------- | ------------ | -------- |
| OWNCLOUD_VERSION | Die ownCloud Version | latest |
| OWNCLOUD_DOMAIN | Die ownCloud Domäne | localhost:8080 |
| ADMIN_USERNAME | Der Benutzername des Admins | admin |
| ADMIN_PASSWORD | Das Kennwort des Admins | admin |
| HTTP_PORT | Der HTTP Port | 8080 |

`wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/.env`

Am Ende bauen und starten wir den Container:<br>
`docker-compose up -d`

### Installation
Ab hier wird die Installation der Software beschrieben.

An diesem Punkt laden wir das Setup-Skript herunter, sorgen dafür daass es ausführbar ist und führen es im Anschluss aus.<br>
`wget https://raw.githubusercontent.com/ufmrk/M300-Services/main/LB2/files/setup.sh && chmod 777 setup.sh && ./setup.sh`

Nach der Installation können wir über folgende URL die Oberfläche von ownCloud aufrufen.<br>
`http://<IP-Adresse>:8080`

## Testing
In diesem Abschnitt wird die Software auf verschiedene Parameter getestet. Alle Szenarios und die Ergebnisse sind in der Tabelle weiter unten sichtbar.

| Szenario | Ereignis | OK/NOK |
| --------- | ------------ | -------- |
| Anwendung startet und ist über das Web erreichbar. | ownCloud lässt sich über die IP-Adresse des Server über den Port 8080 aufrufen. | OK |
| Installation verläuft automatisiert ohne Eingriff des Benutzers. | Es muss ein Kommando eingegeben werden. Ab da verläuft die Installation vollständig automatisiert. | OK |
| Daten sind persistent. Test-Datei wird auf ownCloud hochgeladen und im Anschluss wird der Container gelöscht. | tbd | tbd |
| Container lassen sich vollständig automatisiert wieder abbauen | Ein Kommando löscht alle Container inkl. Volumes auf dem Server. | tbd |

## Quellen
[Offizielle Anleitung von ownCloud](https://doc.owncloud.com/server/next/admin_manual/installation/docker/)

[Docker Cheatsheet](https://www.docker.com/wp-content/uploads/2022/03/docker-cheat-sheet.pdf) 