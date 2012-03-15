; FILENAME VariableScope01.au3
; PURPOSE: 全局变量作用域问题
; CREATED BY: @kysnail at home
; NOTE: 
;       这里定义了全局变量 $row ，但 While...WEnd 循环中如果不添加 $row = $row + 1，始终会停留在一行上进行刷新。
;       
; RESOURCE: 
; 
; 
; Press Esc to terminate script, Pause/Break to "pause"

#include <Excel.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>

; 设置热键 -> Win + o
HotKeySet("#o", "NextRecord")

Global $row = 2
Global $oExcel = _ExcelBookNew() ;新建工作表	
				_ExcelWriteCell($oExcel, "序号", 1, 1) 

#Region ### START GUI section ###
$Form1 = GUICreate("开始录入", 150, 80, -1, -1)
Global $Bon1 = GUICtrlCreateButton("下一组", 30, 24, 97, 33, 0)

GUISetState(@SW_SHOW)
#EndRegion ### END GUI section ###

While 1
   $nMsg = GUIGetMsg()	
  
   Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit
	  Case $Bon1
		 NextRecord($row)
		 ;$row = $row + 1
		 MsgBox(0, "$row value", "$row value = " & $row)
   EndSwitch		   
WEnd

Func NextRecord($row)
   _ExcelWriteCell($oExcel, $row-1, $row, 1)     
   $row = $row + 1
   ;MsgBox(0, "-----------" & $row, "----------------------------")
EndFunc

