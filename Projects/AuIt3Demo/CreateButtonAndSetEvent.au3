; 演示
; 1. 如何制作一个退出按钮
; 2. 如何在按钮上绑定事件
;
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#NoTrayIcon
Opt("GUIOnEventMode", 1)
$Form1 = GUICreate("点击退出按钮退出", 304, 170, 283, 409)
GUISetOnEvent($GUI_EVENT_CLOSE, "Form1Close")
GUISetOnEvent($GUI_EVENT_MINIMIZE, "Form1Minimize")
GUISetOnEvent($GUI_EVENT_RESTORE, "Form1Restore")
$Button1 = GUICtrlCreateButton("退出", 20, 64, 121, 49)
GUICtrlSetOnEvent(-1, "Button1Click")
$Button2 = GUICtrlCreateButton("确定", 170, 64, 121, 49)
GUICtrlSetOnEvent(-1, "Button2Click")
GUISetState(@SW_SHOW)
$ClickTimes = 0
While 1
        Sleep(100)
WEnd

Func Button1Click()
        If $ClickTimes = 0 Then
                MsgBox(4096, "好小子", "第一次就点击了我，马上退出", 5)
        Else
                MsgBox(4096, "终于点击我了", "等你等得草儿都枯了，马上退出", 5)
        EndIf
        Exit
EndFunc
Func Button2Click()
        click()
EndFunc
Func Form1Close()
        click()
EndFunc
Func Form1Minimize()
        click()
EndFunc
Func Form1Restore()
        click()
EndFunc
Func click()
        Switch $ClickTimes
                Case 0
                        MsgBox(4096, "我靠", "不会看标题啊：点击退出按钮退出", 5)
                Case 1
                        MsgBox(4096, "晕", "怎么还那样啊，不是提示过你的吗！", 5)
                Case 2
                        MsgBox(4096, "日", "屡教不改的人啊！", 5)
                Case 3
                        MsgBox(4096, "无语", "~！@#￥%……&*（）", 5)
                Case Else
                        MsgBox(4096, "点吧", "点吧，再点多少次我都给你来这句！", 5)
        EndSwitch
        $ClickTimes += 1
EndFunc


; 也可以用消息模式的思想实现同样的效果
; ------------------------------------
; ...
; while 1
; $msg = guigetmsg()
; switch $msg
;    case $exitbutton
;      exit
; endswitch
; wend
; ...
