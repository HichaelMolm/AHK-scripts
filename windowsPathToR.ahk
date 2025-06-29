#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_class Chrome_WidgetWin_1")

^+v:: {
    ; save original clipboard

    original := A_Clipboard

    ; Wait for clipboard to contain data
    ClipWait 1
    if !ClipWait(1){
        MsgBox "Clipboard is empty or unavailable"
        return
    }

    ; Replace backslashes with forward slashes
    newClip := StrReplace(A_Clipboard, "\", "/")

    ; Temporarily override the clipboard
    A_Clipboard := newClip
    ClipWait 1  ; ensure clipboard is updated

    ;paste the modified clipboard
    Send "^v"

    Send "{Ctrl up}"
}
