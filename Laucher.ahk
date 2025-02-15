; Ce fichier sert uniquement à lancer le script principal en mode configuration
#Requires AutoHotkey v2.0
#SingleInstance Force

; Configuration globale
APP_NAME := "CLEA - Configuration de GPT Shortcut"
CONFIG_FILE := A_ScriptDir . "\config.ini"

; Création de la fenêtre principale avec un style moderne
MainGui := Gui("+Resize +MinSize400x300", APP_NAME)
MainGui.BackColor := "FFFFFF"  ; Fond blanc
MainGui.SetFont("s10", "Segoe UI")  ; Police moderne
MainGui.OnEvent("Close", GuiClose)
MainGui.OnEvent("Size", GuiSize)

; Création des onglets avec style
Tabs := MainGui.Add("Tab3", "w380 h400", ["Raccourci", "Chemins", "Options"])
Tabs.SetFont("s10 bold")

; Onglet Raccourci
Tabs.UseTab(1)
MainGui.Add("GroupBox", "x10 y40 w360 h140", "Raccourci Principal")

; Icône et titre
MainGui.SetFont("s12 bold c0066CC")
MainGui.Add("Text", "x20 y65", " Envoyer à GPT")
MainGui.SetFont("s10 norm")

MainGui.Add("Text", "x20 y95", "Raccourci actuel :")
HotkeyChat := MainGui.Add("Hotkey", "x130 y92 w220 h25", "+^!g")

MainGui.SetFont("s9 c666666")  ; Style pour la description
MainGui.Add("Text", "x20 y125 w330", "Ce raccourci copiera la sélection, ouvrira GPT, collera et enverra le texte.")

; Onglet Chemins
Tabs.UseTab(2)
MainGui.Add("GroupBox", "x10 y40 w360 h140", "Configuration des Chemins")

; Icône et titre
MainGui.SetFont("s12 bold c0066CC")
MainGui.Add("Text", "x20 y65", " ChatGPT Path")
MainGui.SetFont("s10 norm")

MainGui.Add("Text", "x20 y95", "Chemin :")
ChatGPTPathEdit := MainGui.Add("Edit", "x90 y92 w230 h25")
BrowseButton := MainGui.Add("Button", "x330 y92 w30 h25", "...")
BrowseButton.SetFont("s10 bold")
BrowseButton.OnEvent("Click", BrowseChatGPTPath)

; Onglet Options
Tabs.UseTab(3)
MainGui.Add("GroupBox", "x10 y40 w360 h180", "Paramètres de l'Application")

; Icône et titre
MainGui.SetFont("s12 bold c0066CC")
MainGui.Add("Text", "x20 y65", " Options")
MainGui.SetFont("s10 norm")

; Options avec icônes
MainGui.Add("Text", "x30 y95", " Notifications :")
NotifToggle := MainGui.Add("CheckBox", "x160 y93 h25", "Activer")

MainGui.Add("Text", "x30 y125", " Sons :")
SoundToggle := MainGui.Add("CheckBox", "x160 y123 h25", "Activer")

MainGui.Add("Text", "x30 y155", " Redémarrage Auto :")
AutoRestartToggle := MainGui.Add("CheckBox", "x160 y153 h25", "Activer")

MainGui.Add("Text", "x30 y185", " Démarrage Auto :")
AutoStartToggle := MainGui.Add("CheckBox", "x160 y183 h25", "Activer")

; Barre de boutons en bas
Tabs.UseTab()
MainGui.SetFont("s10")

; Conteneur pour les boutons
MainGui.Add("GroupBox", "x0 y410 w400 h60", "")

; Boutons stylisés
MainGui.SetFont("s10 bold")
ApplyButton := MainGui.Add("Button", "x20 y425 w100 h30", " Appliquer")
ApplyButton.OnEvent("Click", SaveConfig)

CloseButton := MainGui.Add("Button", "x130 y425 w100 h30", " Fermer")
CloseButton.OnEvent("Click", GuiClose)

LaunchButton := MainGui.Add("Button", "x240 y425 w130 h30", " Lancer CLEA")
LaunchButton.OnEvent("Click", LaunchGPTShortcut)

; Fonctions
BrowseChatGPTPath(*) {
    SelectedFile := FileSelect(3,, "Sélectionner le navigateur", "Applications (*.exe)")
    if SelectedFile
        ChatGPTPathEdit.Value := SelectedFile
}

LoadConfig() {
    try {
        ; Chargement du raccourci principal
        HotkeyChat.Value := IniRead(CONFIG_FILE, "General", "Shortcut", "+^!g")

        ; Chargement du chemin ChatGPT
        ChatGPTPathEdit.Value := IniRead(CONFIG_FILE, "General", "ChatGPTPath", "")

        ; Chargement des paramètres
        NotifToggle.Value := IniRead(CONFIG_FILE, "General", "EnableNotification", "1")
        SoundToggle.Value := IniRead(CONFIG_FILE, "General", "EnableSound", "1")
        AutoRestartToggle.Value := IniRead(CONFIG_FILE, "General", "AutoRestart", "1")
        AutoStartToggle.Value := IniRead(CONFIG_FILE, "Settings", "AutoStart", "1")
    } catch as err {
        MsgBox("Erreur lors du chargement de la configuration: " . err.Message, APP_NAME, "0x10")
    }
}

SaveConfig(*) {
    try {
        ; Sauvegarde du raccourci principal
        IniWrite(HotkeyChat.Value, CONFIG_FILE, "General", "Shortcut")

        ; Sauvegarde du chemin ChatGPT
        IniWrite(ChatGPTPathEdit.Value, CONFIG_FILE, "General", "ChatGPTPath")

        ; Sauvegarde des paramètres
        IniWrite(NotifToggle.Value, CONFIG_FILE, "General", "EnableNotification")
        IniWrite(SoundToggle.Value, CONFIG_FILE, "General", "EnableSound")
        IniWrite(AutoRestartToggle.Value, CONFIG_FILE, "General", "AutoRestart")
        IniWrite(AutoStartToggle.Value, CONFIG_FILE, "Settings", "AutoStart")

        MsgBox(" Configuration sauvegardée avec succès!", APP_NAME, "0x40")
    } catch as err {
        MsgBox(" Erreur lors de la sauvegarde: " . err.Message, APP_NAME, "0x10")
    }
}

LaunchGPTShortcut(*) {
    try {
        Run(A_ScriptDir . "\gptShortCut.ahk")
    } catch as err {
        MsgBox(" Erreur lors du lancement de GPT Shortcut: " . err.Message, APP_NAME, "0x10")
    }
}

GuiSize(GuiObj, MinMax, Width, Height) {
    if (MinMax = -1)
        return
    
    Tabs.Move(,, Width - 20, Height - 80)
}

GuiClose(*) {
    MainGui.Destroy()
    ExitApp
}

; Initialisation
LoadConfig()
MainGui.Show()
