# 🚀 CLEA - ChatGPT Launcher & Easy Access

## 📋 Table des Matières
1. [Présentation](#présentation)
2. [Fonctionnalités](#fonctionnalités)
3. [Prérequis](#prérequis)
4. [Installation](#installation)
5. [Configuration](#configuration)
6. [Utilisation](#utilisation)
7. [Personnalisation](#personnalisation)
8. [Dépannage](#dépannage)
9. [FAQ](#faq)

## 🎯 Présentation
CLEA est un assistant puissant qui vous permet d'interagir instantanément avec ChatGPT depuis n'importe quelle application Windows. En un seul raccourci clavier, vous pouvez :
- Sélectionner du texte
- L'envoyer automatiquement à ChatGPT
- Obtenir une réponse rapide

## ✨ Fonctionnalités
### Raccourci Principal (Shift+Ctrl+Alt+G)
1. **Sélection Automatique** :
   - Sélectionnez n'importe quel texte dans une application
   - Le raccourci copie automatiquement la sélection

2. **Interaction avec ChatGPT** :
   - Ouverture automatique de ChatGPT
   - Collage du texte
   - Envoi de la requête

3. **Interface de Configuration** :
   - Lanceur graphique intuitif
   - Personnalisation des raccourcis
   - Gestion des paramètres

## 🔧 Prérequis
- Windows 10 ou 11
- AutoHotkey v2.0 ou supérieur
- Application ChatGPT Desktop
- Droits administrateur (recommandé)

## 📥 Installation
1. **Fichiers Nécessaires** :
   ```
   CLEA/
   ├── gptShortCut.ahk    # Script principal
   ├── Laucher.ahk        # Interface de configuration
   ├── config.ini         # Configuration
   └── Save/              # Sauvegardes
   ```

2. **Configuration Initiale** :
   - Lancez `Laucher.ahk`
   - Configurez le chemin vers ChatGPT
   - Personnalisez vos préférences

## ⚙️ Configuration
### Interface Graphique (Laucher.ahk)
1. **Onglet Raccourci** :
   - Modification du raccourci principal
   - Visualisation du raccourci actuel
   - Description des actions

2. **Onglet Chemins** :
   - Chemin vers ChatGPT.exe
   - Sélection via explorateur de fichiers

3. **Onglet Options** :
   - Notifications (activer/désactiver)
   - Sons (activer/désactiver)
   - Redémarrage automatique
   - Démarrage avec Windows

### Configuration Manuelle (config.ini)
```ini
[General]
Shortcut=+^!g           # Shift+Ctrl+Alt+G
ChatGPTPath=C:\...      # Chemin ChatGPT
EnableNotification=1    # Notifications
EnableSound=1          # Sons
AutoRestart=1          # Redémarrage auto

[Settings]
AutoStart=1            # Démarrage avec Windows
```

## 🎮 Utilisation
1. **Utilisation Basique** :
   - Sélectionnez du texte
   - Appuyez sur `Shift+Ctrl+Alt+G`
   - Attendez la réponse de ChatGPT

2. **Configuration** :
   - Lancez `Laucher.ahk`
   - Modifiez les paramètres
   - Appliquez les changements

3. **Bonnes Pratiques** :
   - Gardez une copie de config.ini
   - Utilisez le lanceur pour les modifications
   - Évitez de modifier les fichiers en cours d'exécution

## 🎨 Personnalisation
### Raccourcis Clavier
- Format : `+` (Shift), `^` (Ctrl), `!` (Alt)
- Exemples :
  - `+^!g` = Shift+Ctrl+Alt+G
  - `^!c` = Ctrl+Alt+C

### Options Avancées
- Modification des délais
- Personnalisation des notifications
- Configuration du comportement

## 🔍 Dépannage
### Problèmes Courants
1. **ChatGPT ne s'ouvre pas** :
   - Vérifiez le chemin dans config.ini
   - Assurez-vous que ChatGPT est installé
   - Lancez en mode administrateur

2. **Raccourci ne fonctionne pas** :
   - Vérifiez les conflits de raccourcis
   - Relancez l'application
   - Vérifiez les droits d'accès

3. **Erreurs de Configuration** :
   - Utilisez le lanceur pour reconfigurer
   - Restaurez une sauvegarde
   - Réinitialisez les paramètres

## ❓ FAQ
**Q: Le raccourci fonctionne-t-il partout ?**
R: Oui, sauf dans les applications en mode administrateur.

**Q: Comment changer le raccourci ?**
R: Utilisez le lanceur, onglet "Raccourci".

**Q: Puis-je avoir plusieurs raccourcis ?**
R: Actuellement, seul le raccourci principal est configurable.

**Q: Comment sauvegarder ma configuration ?**
R: Copiez config.ini dans le dossier Save/.

---
Développé avec ❤️ par l'équipe CLEA
