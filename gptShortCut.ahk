#Persistent
#SingleInstance Force
SetTitleMatchMode, 2
IniRead, Shortcut, config.ini, General, Shortcut, ^!+G
IniRead, ChatGPTPath, config.ini, General, ChatGPTPath, C:\Program Files\WindowsApps\OpenAI.ChatGPT-Desktop_1.2025.41.0_x64__2p2nqsd0c76g0\app\ChatGPT.exe
IniRead, EnableNotification, config.ini, General, EnableNotification, 1
IniRead, EnableSound, config.ini, General, EnableSound, 1
IniRead, AutoRestart, config.ini, General, AutoRestart, 1

Hotkey, %Shortcut%, OpenGPT
Return

OpenGPT:
    ; 🟢 1. Copier le texte sélectionné et le sauvegarder temporairement
    SendInput, ^c
    Sleep, 200
    ClipWait, 1

    ; Vérifier si du texte a bien été copié
    TexteMemorise := Clipboard
    If (TexteMemorise = "") {
        MsgBox, 📢 Aucun texte sélectionné ! Sélectionne du texte avant d’appuyer sur la touche.
        Return
    }

    ; 🟢 2. Vérifier si ChatGPT est déjà ouvert, sinon le lancer
    If !WinExist("ahk_exe ChatGPT.exe") {
        Run, powershell -Command "Start-Process '%ChatGPTPath%'"
        Sleep, 1000  ; Pause pour éviter que le script aille trop vite
    }

    ; 🟢 3. Attendre activement que ChatGPT soit totalement prêt
    Loop, 20 {  ; Maximum de 10 secondes (20 essais de 500ms)
        If WinExist("ahk_exe ChatGPT.exe") {
            WinActivate
            WinWaitActive, ahk_exe ChatGPT.exe, , 2
            If WinActive("ahk_exe ChatGPT.exe") {
                Break
            }
        }
        Sleep, 500
    }

    ; Vérification finale après timeout
    If !WinActive("ahk_exe ChatGPT.exe") {
        MsgBox, ❌ ChatGPT ne s'est pas activé correctement. Essaie de le relancer.
        Return
    }

    ; 🟢 4. Réassigner le texte au presse-papiers après l’ouverture de ChatGPT
    Sleep, 1000  ; Pause pour s'assurer que la zone de texte est bien active
    Clipboard := TexteMemorise
    Sleep, 200  ; Pause minimale pour éviter des problèmes avec le presse-papiers
    ClipWait, 1  ; Vérifier que le presse-papiers est bien mis à jour

    ; 🟢 5. Coller le texte avec ControlSend (assure que ça fonctionne même si la fenêtre n'est pas 100% active)
    ControlSend,, ^v, ahk_exe ChatGPT.exe
    Sleep, 300
    ControlSend,, {Enter}, ahk_exe ChatGPT.exe

    ; 🟢 6. Notification et son
    If (EnableNotification = 1) {
        TrayTip, ✅ ChatGPT, Texte envoyé avec succès !, 3
    }
    If (EnableSound = 1) {
        SoundBeep, 1000, 150
    }
Return

; 🟢 7. Vérifier si ChatGPT est fermé et le relancer automatiquement
CheckGPT:
    If (AutoRestart = 1 && !WinExist("ahk_exe ChatGPT.exe")) {
        Run, powershell -Command "Start-Process '%ChatGPTPath%'"
    }
    Sleep, 10000  ; Vérification toutes les 10 secondes
    Goto, CheckGPT
Return
