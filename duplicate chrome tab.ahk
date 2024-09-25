#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_class MozillaUIWindowClass") ; Mozilla Firefox 3.x
    ^+d::GenericDuplicateTab() ; (Control+Shift+D)
#HotIf

#HotIf WinActive("ahk_class MozillaWindowClass") ; Firefox 4, 5, 6, 7, 8+ (?)
    ^+d::GenericDuplicateTab() ; (Control+Shift+D)
#HotIf

#HotIf WinActive("ahk_class Chrome_WidgetWin_1") ; Chromium and Chrome 19+
    ^+d::GenericDuplicateTab() ; (Control+Shift+D)
#HotIf

GenericDuplicateTab() {
    ; Wait for both Control and Shift to be released.
    KeyWait "Control"
    KeyWait "Shift"

    BackupClipbrd := A_Clipboard
    Sleep 50

    Send "!d" ; Select the URL textbox
    Sleep 150 

    Send("^x") ; Copy the URL
    if !ClipWait(0.1) {
      A_Clipboard := BackupClipbrd
        return
    }

    Send("^t") ; Open a new tab
    Sleep 50

    Send("^v") ; Paste the URL into the new tab's URL textbox
    Sleep 50
    Send("{Enter}")

    Clipboard := BackupClipbrd
}