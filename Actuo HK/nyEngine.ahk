#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_class Chrome_WidgetWin_1")
^l:: {
    ;select address bar (alt + d)
    Send("!d")
    Sleep(50)

    ; Copy url
    Send("^c")
    Sleep(50)

    ;define url as variable to manipulate
    url := String(A_Clipboard)  

    ;Find end of main url in case url starts with https:// and when it doesn't
    if InStr(url,"://") {
        lookAfter := InStr(url,"://")+3
        ; find the first "/" after https://
        pos := InStr(url, "/", ,lookAfter)
    } else {
        pos := InStr(url, "/")
    }

    if pos > 0 {
        newUrl := SubStr(url, 1 , pos) . "engine"
    } else{
        newUrl := String(url) . "/engine"
    }

    Send("{BackSpace}")
    Sleep(50)
    SendInput(newUrl)

}