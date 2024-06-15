#IfWinActive ahk_class Chrome_WidgetWin_1 ; Chromium and Chrome 19+
   ^+d::GenericDuplicateTab() ; (Control+Shift+D)
#IfWinActive

GenericDuplicateTab()
{
   ; Wait for both Control and Shift to be released.
   KeyWait Control
   KeyWait Shift

   BackupClipbrd := Clipboard
   Sleep 50

   Send !d ; Select the url textbox
   Sleep 150

   Send ^x ; Copy the url
   ClipWait 0.1
   If ERRORLEVEL
   {
    Clipboard := BackupClipbrd
    Return
   }

   Send ^t ; Open a new tab
   Sleep 50

   Send ^v ; Paste the url into the new tab's url textbox
   Sleep 50
   Send {Enter}

   Clipboard := BackupClipbrd
}