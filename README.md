# UHF Server Add-on for Home Assistant (HassOS)

This add-on runs UHF Server inside Home Assistant OS as a Supervisor-managed add-on.

## Installatie
1. Maak een nieuwe repository in je Home Assistant Supervisor: `Supervisor -> Add-on Store -> Repositories -> Add` en plak de URL van deze repository (zie instructie hieronder wanneer je deze add-on host).
2. Installeer de add-on en start hem.
3. Open de Web UI (of gebruik de ip:port) en configureer je UHF app to point to the host IP and port you set (default port 8000).

## Opties
- `recordings_dir` (default: `/share/uhf`) — de map waar opnamen worden opgeslagen binnen Home Assistant.
- `host` en `port` — netwerk binding (default `0.0.0.0:8000`).

## Opnamen opslaan op je Synology NAS
HassOS beperkt directe SMB mounts op het host-systeem. Hier zijn mogelijkheden:

### Optie A — Gebruik een tweede Raspberry Pi of machine
De eenvoudigste en meest robuuste oplossing is om UHF Server op een aparte Linux machine (zoals een tweede Pi) te draaien en die machine de NAS mount te laten beheren. Dit is aanbevolen als je grote opnamen rechtstreeks naar de NAS wil laten schrijven.

### Optie B — Gebruik de "Samba share" add-on (alleen voor share binnen Home Assistant)
Je kunt opnamen in `/share/uhf` laten verschijnen; vervolgens gebruik je je NAS of een andere apparaat om die map te synchroniseren. Dit is omslachtig en niet ideaal voor grote bestanden.

### Optie C — (gevorderd) Zorg dat HassOS de NAS mount via een custom supervisor/os configuratie
Dit vergt aanpassingen aan HassOS en is niet standaard ondersteund; daarom niet aanbevolen.

## Gebruik
- Na installatie: start de add-on.
- Kijk in de logs voor startinformatie.
- Configureer de UHF App met het IP van je Home Assistant host en de gekozen poort (bijv. `http://192.168.1.2:8000`).UHF addon
