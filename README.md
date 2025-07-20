# 🖥️ raspberrypi-remote-setup

**Accès distant et infrastructure locale avec Raspberry Pi (Debian/Raspbian)**

Ce projet documente l'installation, la configuration et les usages avancés d’un Raspberry Pi comme serveur personnel, sans écran ni clavier, entièrement accessible à distance via :

- 🧪 SSH
- 🖥️ VNC
- 📂 Partage Samba
- 🔁 Transfert de fichiers (SCP)
- ⚙️ Scripts Linux (bash)

---

## 🔧 Objectif

📡 Créer une infrastructure locale, contrôlable à distance, à des fins de test, d’apprentissage et de support IT niveau 2.

---

## 🧱 Matériel utilisé

- Raspberry Pi 5 (et 3B+ en complément)
- Carte microSD (x2)
- Raspbian (Debian for Raspberry Pi)
- PC Windows 10
- Chromebook (Linux Crostini)
- iPhone (client VNC)

---

## 🔐 1. Accès SSH

```bash
sudo raspi-config
# Interface Options > SSH > Enable
```

Depuis le PC :
```bash
ssh louis@192.168.1.138
```

---

## 🖥️ 2. Accès VNC

```bash
sudo raspi-config
# Interface Options > VNC > Enable
```

Client : RealVNC Viewer (PC ou iPhone)  
Connexion à `192.168.1.138` avec login et mot de passe

---

## 📂 3. Partage de fichiers avec Samba

```bash
sudo apt update && sudo apt install samba
sudo mkdir /home/louis/partage
sudo nano /etc/samba/smb.conf
```

Ajouter à la fin :
```
[partage]
   path = /home/louis/partage
   read only = no
   guest ok = yes
```

Redémarrer le service :
```bash
sudo systemctl restart smbd
```

---

## 🔁 4. Transfert de fichiers

**De Windows vers Raspberry :**
```bash
scp fichier.txt louis@192.168.1.138:/home/louis/
```

**De Raspberry vers Windows (avec dossier partagé sur Windows ou WinSCP)**

---

## 📜 5. Scripts Linux utiles

```bash
# shutdown
sudo shutdown -h now

# voir IP
ip a

# ping réseau
ping 192.168.1.1

# installer un paquet
sudo apt install nom_du_paquet

# kill d’un processus
pidof nom_processus
kill -9 PID
```

---

## 📌 Notes

- Redémarrage automatique en cas de freeze : `sudo reboot`
- Utilisation en mode headless (sans écran)
- Apprentissage de la logique N2 en environnement Linux

---

## 👨‍💻 Auteur

Louis (passionné de nano-informatique, support technique, N2 en devenir)
