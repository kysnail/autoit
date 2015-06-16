#include <MsgBoxConstants.au3>

; change ip address
Run("E:\Apps\路由器自动换IP助手\路由器自动换IP助手v2.1.exe","",@SW_SHOW)
; WinWait("路由器自动换IP助手 2.1  www.webmax.com.cn ")

;$handle = WinGetHandle("E:\Apps\路由器自动换IP助手\路由器自动换IP助手v2.1.exe")
;MsgBox($MB_SYSTEMMODAL, "Window Handler", "------------", 10)
;WinActivate($handle)

if WinExists("路由器自动换IP助手 2.1  www.webmax.com.cn") Then

  ControlClick("记事本","","取消")
;ControlClick("[CLASS:CalcFrame]”,””,”Button16″)
;ControlClick("计算器”,””,”[CLASS:Button;INSTANCE:15]”)
   ;if ControlClick("[CLASS:TfrmMain]", "", "[CLASS:TRzBitBtn;INSTANCE:4]") = 1 Then
   if ControlClick("路由器自动换IP助手 2.1  www.webmax.com.cn", "", "测试") = 1 Then

    MsgBox($MB_SYSTEMMODAL, "Title", "This message box will timeout after 10 seconds or select the OK button.", 10)
 Else
	MsgBox($MB_SYSTEMMODAL, "Title1", "This message box will timeout after 10 seconds or select the OK button.", 10)

	EndIf

EndIf
; open chrome



; emulate user gesture



; close chrome


; make a loop
