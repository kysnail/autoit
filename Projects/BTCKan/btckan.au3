#include <MsgBoxConstants.au3>

; change ip address
;Run("E:\Apps\路由器自动换IP助手\路由器自动换IP助手v2.1.exe","",@SW_SHOW)
; WinWait("路由器自动换IP助手 2.1  www.webmax.com.cn ")

;$handle = WinGetHandle("E:\Apps\路由器自动换IP助手\路由器自动换IP助手v2.1.exe")
;MsgBox($MB_SYSTEMMODAL, "Window Handler", "------------", 10)
;WinActivate($handle)

;if WinExists("路由器自动换IP助手 2.1  www.webmax.com.cn") Then
;
;  ControlClick("记事本","","取消")
;;ControlClick("[CLASS:CalcFrame]”,””,”Button16″)
;;ControlClick("计算器”,””,”[CLASS:Button;INSTANCE:15]”)
;   ;if ControlClick("[CLASS:TfrmMain]", "", "[CLASS:TRzBitBtn;INSTANCE:4]") = 1 Then
;   if ControlClick("路由器自动换IP助手 2.1  www.webmax.com.cn", "", "测试") = 1 Then
;
;    MsgBox($MB_SYSTEMMODAL, "Title", "This message box will timeout after 10 seconds or select the OK button.", 10)
; Else
;	MsgBox($MB_SYSTEMMODAL, "Title1", "This message box will timeout after 10 seconds or select the OK button.", 10)
;
;	EndIf
;
;EndIf
; open chrome
$chrome_path = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

;;打开窗口
Local $val = Run($chrome_path)
;;登录窗口显示
WinWaitActive("[CLASS:Chrome_WidgetWin_1]")
;; 休息2000毫秒
Sleep(2000)
;; 移动窗口
WinMove("[CLASS:Chrome_WidgetWin_1]", "打开新的标签页 - Google Chrome", 0, 0,1200,740,2);
;; 休息500毫秒
Sleep(500)
;; 窗口PID
;;MsgBox(0, "PID:", $val);

;;清除cookie
;Send("chrome://settings/clearBrowserData");
;send("{enter}");
;Sleep(2000)
;MouseClick("left",724,570,2);
;;
Sleep(2000)

;;打开浏览页面
Send("+^n");
Sleep(500)
Send("http://btckan.com/news/topic/11035?bkfrom=appshare&bktarget=weixin&bkuserid=18295");
Send("{enter}");
Sleep(2000)

;;判断窗口是否存在
If WinExists("[CLASS:Chrome_WidgetWin_1]") Then
	MsgBox(0, "info", "窗口存在")
Else
	MsgBox(64, "error", "窗口不存在")
EndIf



; emulate user gesture



; close chrome


; make a loop
