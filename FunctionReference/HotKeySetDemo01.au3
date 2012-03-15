; FILENAME HotKeySetDemo01.au3
; PURPOSE: Hotkey demo
; CREATED BY: @kysnail at 
; NOTE: 
;       
;       
; RESOURCE: 
;
;
; Press Esc to terminate script, Pause/Break to "pause"

; Flag variable 'start/pause' the script
Global $Paused
; Win Key + XXX
HotKeySet("#o", "WinHotKey")
; CONTROL + ALT + XXX
HotKeySet("^!a", "CtlAltHotkey")
; ALT + SHIFT + XXX
HotKeySet("!+a", "ShiAltHotKey")
; {ESC} 
HotKeySet("{ESC}", "Terminate")
; {DOWN} -> Move down a menu
HotKeySet("{DOWN}", "MoveDownMenu")
; Toggle the state
HotKeySet("{PAUSE}", "TogglePause")

;;;; Body of program would go here ;;;;
While 1
    Sleep(100)
WEnd
;;;;;;;;

Func TogglePause()
    $Paused = Not $Paused
    While $Paused
        Sleep(100)
        ToolTip('Script is "Paused"', 2)
    WEnd
    ToolTip("")
EndFunc   ;==>TogglePause

; Terminate the demo
Func Terminate()
    Exit 0
EndFunc   ;==>Terminate

; Move down a menu
Func MoveDownMenu()
    MsgBox(4096, "MoveDownMenu Function", "You just move down a menu!")
EndFunc   ;==>ShowMessage
 
; Window Key + Key
Func WinHotKey()
   MsgBox(0, "WinHotKey Function", "Actived by 'Win Key'")
EndFunc   

; Control + Alt + Key
Func CtlAltHotkey()
   MsgBox(0, "CtlAltHotKey Function", "Actived by 'Ctrl + Alt + a'")
EndFunc        ;==>CtlAltHotKey

; Shift + Alt + Key
Func ShiAltHotKey()
   MsgBox(0, "ShiAltHotKey Function", "Actived by 'Shift + Alt + a")
EndFunc
 
