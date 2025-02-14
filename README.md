# CLEA - Assistant de Raccourcis Clavier

## 📋 Table des Matières
1. [Présentation](#présentation)
2. [Prérequis](#prérequis)
3. [Installation](#installation)
4. [Configuration](#configuration)
5. [Utilisation](#utilisation)
6. [Fonctionnalités](#fonctionnalités)
7. [Dépannage](#dépannage)
8. [Combinaisons de Touches Disponibles](#combinaisons-de-touches-disponibles)
9. [Contribution](#contribution)

## 🎯 Présentation
CLEA (Command Line Easy Assistant) est un outil puissant qui permet d'automatiser vos tâches quotidiennes grâce à des raccourcis clavier personnalisables. Développé avec AutoHotkey, il offre une interface intuitive pour la gestion de vos commandes favorites.

## 💻 Prérequis
- Windows 10 ou plus récent
- AutoHotkey v2.0 ou supérieur
- Droits d'administrateur pour l'installation

## 🚀 Installation

### Installation Automatique
1. Téléchargez le fichier d'installation depuis le dépôt
2. Exécutez le fichier en tant qu'administrateur
3. Suivez les instructions à l'écran

### Installation Manuelle
1. Clonez le dépôt :
   ```bash
   git clone [URL_DU_REPO]
   ```
2. Installez AutoHotkey v2.0 depuis le [site officiel](https://www.autohotkey.com/)
3. Copiez les fichiers dans le dossier de votre choix

## ⚙️ Configuration

### Configuration du fichier config.ini
Le fichier `config.ini` contient les paramètres principaux :
```ini
[Settings]
Language=FR
DefaultBrowser=chrome
CustomShortcuts=true

[Shortcuts]
# Exemple de raccourcis personnalisés
Ctrl+Alt+T=Terminal
Ctrl+Alt+N=Notepad
```

### Personnalisation des Raccourcis
1. Ouvrez le fichier `gptShortCut.ahk`
2. Ajoutez ou modifiez les raccourcis selon vos besoins
3. Sauvegardez et redémarrez l'application

## 🎮 Utilisation

### Raccourcis par Défaut
- `Win + G` : Ouvre l'interface principale
- `Ctrl + Alt + R` : Recharge la configuration
- `Ctrl + Alt + P` : Ouvre les paramètres

### Commandes Rapides
1. Appuyez sur le raccourci configuré
2. Saisissez votre commande
3. Validez avec Entrée

## 🛠️ Fonctionnalités
- Automatisation des tâches répétitives
- Raccourcis clavier personnalisables
- Support multi-langues
- Historique des commandes
- Sauvegarde automatique des configurations

## 🔧 Dépannage

### Problèmes Courants
1. **L'application ne démarre pas**
   - Vérifiez les droits d'administrateur
   - Assurez-vous qu'AutoHotkey est bien installé

2. **Les raccourcis ne fonctionnent pas**
   - Vérifiez les conflits avec d'autres applications
   - Redémarrez l'application

## 🎹 Combinaisons de Touches Disponibles
Voici une liste de 30 combinaisons de touches non utilisées par Windows 10 et la plupart des applications, idéales pour créer vos commandes CLEA :

### Combinaisons avec F13-F24 (Très sûres car rarement utilisées)
1. `F13` : Disponible pour commande simple
2. `Shift + F13` : Disponible
3. `Ctrl + F13` : Disponible
4. `Alt + F13` : Disponible
5. `F14` à `F24` : Entièrement disponibles

### Combinaisons avec Touches Numériques
6. `Alt + NumPad0` : Disponible
7. `Alt + NumPad1` à `NumPad9` : Disponibles
8. `Ctrl + Alt + NumPad0` à `NumPad9` : Disponibles
9. `Shift + Alt + NumPad0` à `NumPad9` : Disponibles
10. `Ctrl + Shift + NumPad0` à `NumPad9` : Disponibles

### Combinaisons avec CapsLock
11. `CapsLock + A` à `Z` : Disponibles (après remappage de CapsLock)
12. `CapsLock + 1` à `9` : Disponibles
13. `CapsLock + F1` à `F12` : Disponibles
14. `CapsLock + Tab` : Disponible
15. `CapsLock + Espace` : Disponible

### Combinaisons avec AltGr (Alt Droit)
16. `AltGr + A` à `Z` : Plusieurs combinaisons disponibles
17. `AltGr + 1` à `9` : Disponibles
18. `AltGr + F1` à `F12` : Disponibles
19. `AltGr + Tab` : Disponible
20. `AltGr + Espace` : Disponible

### Combinaisons Multi-touches
21. `Ctrl + Alt + ;` : Disponible
22. `Ctrl + Alt + ,` : Disponible
23. `Ctrl + Alt + .` : Disponible
24. `Ctrl + Alt + /` : Disponible
25. `Ctrl + Alt + '` : Disponible

### Combinaisons avec Touches Spéciales
26. `Shift + Alt + ~` : Disponible
27. `Ctrl + Alt + Insert` : Disponible
28. `Ctrl + Alt + Home` : Disponible
29. `Ctrl + Alt + PageUp` : Disponible
30. `Ctrl + Alt + PageDown` : Disponible

> **Notes importantes :**
> - Ces combinaisons ont été choisies car elles sont rarement utilisées par Windows ou d'autres applications
> - Testez toujours la combinaison choisie avant de l'assigner pour vérifier qu'elle n'est pas déjà utilisée
> - Les touches F13-F24 nécessitent un clavier qui les supporte ou une configuration spéciale
> - Le remappage de CapsLock nécessite une configuration supplémentaire dans AutoHotkey
> - Évitez les combinaisons `Win + Touche` car elles sont souvent réservées par Windows

## 🤝 Contribution
Les contributions sont les bienvenues ! Pour contribuer :
1. Forkez le projet
2. Créez une branche pour votre fonctionnalité
3. Soumettez une pull request

## 📄 Licence
Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

---
Développé avec ❤️ par [Votre Équipe]
