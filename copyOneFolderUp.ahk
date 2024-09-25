#Requires AutoHotkey v2.0
#HotIf WinActive("ahk_class CabinetWClass")
^u::
{
    Send("^x")
    Sleep(500)
    Send("{backspace}")
    Sleep(500)
    Send("^v")
}