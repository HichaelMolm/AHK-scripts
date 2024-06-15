#IfWinActive ahk_class Chrome_WidgetWin_1
^l::
Send, !d
Sleep, 50
Send, {backspace}
Sleep, 50
SendInput, "localhost"
return
