![Banner](/images/Banner_M300_GitHub-Repository.png)

# Inhaltsverzeichnis
- [Inhaltsverzeichnis](#inhaltsverzeichnis)
- [Einleitung](#einleitung)
  - [Über dieses Repository](#über-dieses-repository)
  - [Nützliche Links](#nützliche-links)
  - [Das Modul 300](#das-modul-300)
    - [Kompetenz](#kompetenz)
    - [Handlungsziele](#handlungsziele)
      - [1. Ermittelt aus Vorgaben die erforderlichen Services und leitet nötige Anforderungen ab.](#1-ermittelt-aus-vorgaben-die-erforderlichen-services-und-leitet-nötige-anforderungen-ab)
      - [2. Erarbeitet ein Konzept für die Integration der Services gemäss Vorgaben und definiert Sicherheitsmassnamen.](#2-erarbeitet-ein-konzept-für-die-integration-der-services-gemäss-vorgaben-und-definiert-sicherheitsmassnamen)
      - [3. Konfiguriert die benötigten Services gemäss Vorgaben und überprüft deren Funktionalität anhand der Anforderungen.](#3-konfiguriert-die-benötigten-services-gemäss-vorgaben-und-überprüft-deren-funktionalität-anhand-der-anforderungen)
      - [4. Konfiguriert Netzwerkverbindungen und überprüft deren Funktionalität.](#4-konfiguriert-netzwerkverbindungen-und-überprüft-deren-funktionalität)
      - [5. Integriert verschiedene Services und Plattformen zu einem Gesamtsystem und testet die Integration.](#5-integriert-verschiedene-services-und-plattformen-zu-einem-gesamtsystem-und-testet-die-integration)
      - [6. Grenzt allfällige Fehler systematisch ein, protokolliert diese und leitet Massnahmen zur Fehlerbehebung ein.](#6-grenzt-allfällige-fehler-systematisch-ein-protokolliert-diese-und-leitet-massnahmen-zur-fehlerbehebung-ein)
      - [7. Dokumentiert das Gesamtsystem so, dass es jederzeit nachvollzogen werden kann.](#7-dokumentiert-das-gesamtsystem-so-dass-es-jederzeit-nachvollzogen-werden-kann)
- [Dokumentation](#dokumentation)
  - [Allgemeines](#allgemeines)
    - [Aufbau TBZ-Infrastruktur](#aufbau-tbz-infrastruktur)
    - [Virtualisierung](#virtualisierung)
  - [Vagrant](#vagrant)
    - [Theorie](#theorie)
      - [Cheatsheet](#cheatsheet)
      - [Vagrantfile](#vagrantfile)
      - [Provision Script](#provision-script)
      - [Vagrant Synced Folders](#vagrant-synced-folders)
    - [Hands-On](#hands-on)
      - [Apache Webserver aufsetzen](#apache-webserver-aufsetzen)
      - [Nginx Webserver aufsetzen](#nginx-webserver-aufsetzen)
  - [Docker](#docker)
    - [Theorie](#theorie-1)
      - [Cheatsheet](#cheatsheet-1)
      - [Docker Architektur](#docker-architektur)
      - [File](#file)
      - [Image](#image)
      - [Container](#container)
      - [Volumes](#volumes)
      - [Networking](#networking)
    - [Hands-On](#hands-on-1)
    - [Eigenes Image erstellen](#eigenes-image-erstellen)
- [OpenSource Lizenz](#opensource-lizenz)
  - [Dieses Werk ist lizenziert unter einer Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 3.0 Schweiz Lizenz](#dieses-werk-ist-lizenziert-unter-einer-creative-commons-namensnennung---nicht-kommerziell---weitergabe-unter-gleichen-bedingungen-30-schweiz-lizenz)

# Einleitung

## Über dieses Repository
In diesem Repository werden alle Aufträge, welche es im Modul 300 zu behandeln gibt, dokumentiert und teilweise erklärt. Es folgen hauptsächlich Inputs zu den Themen **Vagrant**, **Docker** und **Kubernetes**.

## Nützliche Links
[Lernumgebung](https://docs.google.com/document/d/1vhFlQqMp2IutaXR13zYFCEMr8LOZRuB5LFxajU3myzI/edit)

[Unterrichtsmaterial](https://github.com/mc-b/M300)

[Modulbaukasten](https://www.modulbaukasten.ch/module/300/4/de-DE?title=Plattform%C3%BCbergreifende-Dienste-in-ein-Netzwerk-integrieren)

## Das Modul 300

![Zeitplan](/images/Zeitplan.png)

Das Modul ist so aufgebaut, dass am Ende die folgenden Kompetenzen und Handlungsziele erfüllt sind.

### Kompetenz
Konfiguriert plattformübergreifende Services nach Vorgabe für eine heterogene Systemumgebung. Nimmt die Services in Betrieb, führt Tests durch und dokumentiert das Gesamtsystem.

### Handlungsziele

#### 1. Ermittelt aus Vorgaben die erforderlichen Services und leitet nötige Anforderungen ab.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die Einsatz- und Konfigurationsmöglichkeiten von vorgegebenen Betriebssystemen und Services.
2. Kennt die Vorgehensweise für die Analyse von Anforderungen.


#### 2. Erarbeitet ein Konzept für die Integration der Services gemäss Vorgaben und definiert Sicherheitsmassnamen.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die wichtigsten inhaltlichen und formalen Regeln, die bei der Erstellung eines Konzeptes einzuhalten sind.
2. Kennt die Vorgehensweise zur Definition von Testfällen.
3. Kennt die wichtigsten Schnittstellen und ihre Eigenschaften innerhalb einer heterogenen Systemumgebung.
4. Kennt die anzuwendenden Schutz- und Sicherheitsmassnahmen für Services.


#### 3. Konfiguriert die benötigten Services gemäss Vorgaben und überprüft deren Funktionalität anhand der Anforderungen.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die übliche Vorgehensweise bei der Inbetriebnahme von Services (z.B. installieren, starten, testen).
2. Kennt betriebssystemspezifische Konzepte zur Konfiguration von Services (z.B. Konfigurationsdateien, Registry, systemweite/benutzerspezifische Konfiguration).
3. Kennt die unterschiedlichen Konzepte, Systembefehle und Hilfsprogramme für die Benutzer- und Rechteverwaltung (z.B. User-ID, Zugriffsrechte, Gruppenmitgliedschaft, Standardrechte, Vererbung, Homeverzeichnis).
4. Kennt technische Möglichkeiten, um Ressourcen im Netzwerk durch Gruppen gemeinsam zu nutzen.
5. Kennt Testmöglichkeiten verschiedener Services.


#### 4. Konfiguriert Netzwerkverbindungen und überprüft deren Funktionalität.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die Elemente und Funktionen eines TCP/IP-Protokolls (z.B. MAC- und IP-Adressen, IP-Adressklassen, Netzmasken, Routing, Adress Resolution Protocol, TCP/UDP, wichtige Portnummern).
2. Kennt die Konfigurationsmöglichkeiten bei Netzwerkverbindungen.
3. Kennt Möglichkeiten, um die Netzwerkverbindungen zu testen.


#### 5. Integriert verschiedene Services und Plattformen zu einem Gesamtsystem und testet die Integration.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die Funktionsweisen der anzuwendenden Services (z.B. DHCP, DNS, Verzeichnisdienste, Fileservices, Printservices).
2. Kennt die Konfigurationsmöglichkeiten der anzuwendenden Services.


#### 6. Grenzt allfällige Fehler systematisch ein, protokolliert diese und leitet Massnahmen zur Fehlerbehebung ein.

**Handlungsnotwendige Kenntnisse:**
1. Kennt den Aufbau und die wesentlichen Merkmale eines Testprotokolls.
2. Kennt verschiedene Testmethoden für die Funktionalität der Services (z.B. Blackbox, White-box).
3. Kennt Methoden zur systematischen Fehlereingrenzung (z.B. Ausschlussverfahren intakter Systeme).
4. Kennt Werkzeuge zur Fehleranalyse und Fehlerbehebung.


#### 7. Dokumentiert das Gesamtsystem so, dass es jederzeit nachvollzogen werden kann.

**Handlungsnotwendige Kenntnisse:**
1. Kennt die Bedeutung einer Dokumentation zur Sicherstellung und Nachvollziehbarkeit von Arbeitsergebnissen.
2. Kennt die wichtigsten inhaltlichen und formalen Regeln, die bei der Dokumentation von Arbeitsergebnissen einzuhalten sind.

---

# Dokumentation
In diesem Teil werden die erledigten Aufträge dokumentiert. Alle Kapitel sind nach Schwerpunkt Thema gegliedert.

## Allgemeines
In diesem Abschnitt werden allgemeine theoretische Inputs beschrieben.

### Aufbau TBZ-Infrastruktur
In der untenstehenden Grafik ist beschrieben, wie man auf die TBZ-Cloud verbindet. Der Aufbau besteht aus den folgenden Komponenten:

• Laptop des Lernenden<br>
• Linux VM in der TBZ-Cloud (fungiert als Host)<br>
• Guest als Vagrant VM (VM in VM)

![Infrastruktur](/images/infrastruktur.jpg)

### Virtualisierung
In der folgenden Grafik wird der Wandel von Bare-Metal zu Cloud-Native (Virtualisierung 2.0) beschrieben.

![Virtualisierung](/images/Virtualisierung.jpg)

**Vorteile von Cloud-Lösungen**

• Tiefere Lizenzkosten<br>
• Weniger administrativer Aufwand<br>
• Tiefere Produktionskosten<br>
• Hohe Flexibilität<br>
• Redundanz, Unabhängigkeit<br>

**Nachteile von Cloud-Lösungen**

• Gemeinsamer Kernel von Betriebssystem wird verwendet -> Sicherheit eingeschränkt<br>
• Kompliziert in Einrichtung & Verwalutng<br>
• Geringe Kompatibilität mit Windows<br>
• Wenig Fachpersonal für Wartung

## Vagrant

### Theorie
Vagrant ist eine freie Ruby-Anwendung zum Erstellen und Verwalten von virtuellen Maschinen. Vagrant ermöglicht einfache Softwareverteilung (englisch Deployment) insbesondere in der Software- und Webentwicklung.

#### Cheatsheet
![Cheatsheet](/images/vagrant_cheatsheet.webp)

#### Vagrantfile
Die Hauptfunktion des Vagrantfiles besteht darin, den für ein Projekt erforderlichen Maschinentyp zu beschreiben und zu beschreiben, wie diese Maschinen konfiguriert und bereitgestellt werden. Vagrantfiles werden Vagrantfiles genannt, weil der eigentliche wörtliche Dateiname für die Datei Vagrantfile lautet.

#### Provision Script
Die Vagrant-Shell-Bereitstellung ermöglicht das Hochladen und Ausführen eines Skripts innerhalb der Gastmaschine.
Die Shell-Bereitstellung ist ideal für Benutzer, die neu in Vagrant sind und schnell einsatzbereit sein wollen, und bietet eine gute Alternative für Benutzer, die mit einem vollständigen Konfigurationsmanagementsystem wie Chef oder Puppet nicht vertraut sind.
Für POSIX-ähnliche Maschinen führt der Shell Provisioner Skripte mit SSH aus. Für Windows-Gastcomputer, die für die Verwendung von WinRM konfiguriert sind, führt der Shell-Provisioner PowerShell- und Batch-Skripte über WinRM aus.

#### Vagrant Synced Folders
Um Dateien zwischen dem Host und der Virtuellen Maschine zu sharen, kann man diese in den Ordner kopieren, in welcher das Vagrantfile liegt. Die Shared Folder werden mit dem Parameter `config.vm.synced_folder` im Vagrantfile definiert.

### Hands-On

#### Apache Webserver aufsetzen
[Hier geht es zum Auftrag](https://github.com/mc-b/M300/tree/master/10-Toolumgebung#--04---vagrant)

#### Nginx Webserver aufsetzen
[Hier geht es zum Auftrag](https://github.com/ser-cal/M300-Vagrant-Webserver)


## Docker

### Theorie
Docker ist ein beliebtes Open-Source-Tool, das eine portable und konsistente Laufzeitumgebung für Softwareanwendungen bietet. Docker verwendet Container als isolierte Umgebungen im Benutzerraum, die auf Betriebssystemebene ausgeführt werden und das Dateisystem sowie die Systemressourcen gemeinsam nutzen. Ein Vorteil ist, dass durch die Containerisierung so deutlich weniger Ressourcen verbraucht werden, als bei einem herkömmlichen Server oder einer virtuellen Maschine.

#### Cheatsheet
![Cheatsheet](/images/dockercheatsheet.png)

#### Docker Architektur
Docker Deamon

• Erstellen, Ausführen und Überwachen der Container<br>
• Bauen und speichern der Images

Docker CLI

• Schnittstelle zum Docker Deamon

#### File


#### Image


#### Container


#### Volumes


#### Networking


### Hands-On


### Eigenes Image erstellen
[Hier geht es zum Auftrag](https://gitlab.com/ser-cal/Container-CAL-webapp_v1)

---

# OpenSource Lizenz
![copyright](https://camo.githubusercontent.com/bf63a077023c34e5c61916eea81a068b4e44c86d51c08b8db9d2335a0b9af3b6/68747470733a2f2f692e6372656174697665636f6d6d6f6e732e6f72672f6c2f62792d6e632d73612f332e302f63682f38387833312e706e67)

Dieses Werk ist lizenziert unter einer [Creative Commons Namensnennung - Nicht-kommerziell - Weitergabe unter gleichen Bedingungen 3.0 Schweiz Lizenz](http://creativecommons.org/licenses/by-nc-sa/3.0/ch/)
---
