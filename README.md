# 🔁 Solvion Cloner

> **Discord Server Cloning Tool** · by Soweb

---

## 🇬🇧 English

### What is it?
Solvion Cloner is a terminal tool to clone a Discord server — roles, categories, channels, and emojis — into another server or a newly auto-created one.

### ⚙️ Requirements
- Python 3.8+
- A Discord user token *(not a bot token)*

### 📦 Installation

**Option 1 — Automatic script (Windows):**
```bat
install.bat
```
> Automatically installs Python and dependencies if not already present.

**Option 2 — Manual:**
```bash
pip install -r requirements.txt
```

### 🚀 Usage
```bash
python solvion_cloner.py
```

1. Select your language
2. Enter your Discord token
3. Choose an option:
   - **[1]** Clone into an existing server
   - **[2]** Clone into a new auto-created server
   - **[3]** Quit

### 📋 What gets cloned?

| Element | Status |
|---|:---:|
| Roles (permissions, color, hoist) | ✅ |
| Categories | ✅ |
| Text & voice channels | ✅ |
| Custom emojis | ✅ |
| Server name & icon | ✅ |

> ⚠️ **Warning:** All existing channels, roles, and emojis on the target server will be **deleted** before cloning.

### 📁 Logs
Each session generates a log file in the `logs/` folder.

---

## 🇫🇷 Français

### C'est quoi ?
Solvion Cloner est un outil en terminal pour cloner un serveur Discord — rôles, catégories, salons et emojis — vers un serveur existant ou un nouveau serveur créé automatiquement.

### ⚙️ Prérequis
- Python 3.8+
- Un token utilisateur Discord *(pas un token de bot)*

### 📦 Installation

**Option 1 — Script automatique (Windows) :**
```bat
install.bat
```
> Installe Python et les dépendances automatiquement si nécessaire.

**Option 2 — Manuelle :**
```bash
pip install -r requirements.txt
```

### 🚀 Utilisation
```bash
python solvion_cloner.py
```

1. Choisir la langue
2. Entrer son token Discord
3. Choisir une option :
   - **[1]** Cloner vers un serveur existant
   - **[2]** Cloner vers un nouveau serveur (créé automatiquement)
   - **[3]** Quitter

### 📋 Ce qui est cloné

| Élément | État |
|---|:---:|
| Rôles (permissions, couleur, hoist) | ✅ |
| Catégories | ✅ |
| Salons textuels & vocaux | ✅ |
| Emojis personnalisés | ✅ |
| Nom & icône du serveur | ✅ |

> ⚠️ **Attention :** Tous les salons, rôles et emojis du serveur cible seront **supprimés** avant le clonage.

### 📁 Logs
Chaque session génère un fichier de log dans le dossier `logs/`.

---

## 📂 Project Structure / Structure du projet

```
solvion-cloner/
├── solvion_cloner.py   # Main script / Script principal
├── requirements.txt    # Python dependencies / Dépendances Python
├── install.bat         # Windows auto-installer / Installateur automatique
├── README.md           # This file / Ce fichier
└── logs/               # Session logs (auto-generated / générés automatiquement)
```

## 📜 Dependencies / Dépendances

| Package | Version |
|---|---|
| `discord.py-self` | >= 2.0.0 |
| `colorama` | >= 0.4.6 |

---

*Solvion Cloner — by Soweb*
