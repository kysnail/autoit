; FILENAME VariableScope01.au3
; PURPOSE: ȫ�ֱ�������������
; CREATED BY: @kysnail at home
; NOTE: 
;       ���ﶨ����ȫ�ֱ��� $row ���� While...WEnd ѭ������������ $row = $row + 1��ʼ�ջ�ͣ����һ���Ͻ���ˢ�¡�
;       
; RESOURCE: 
; 
; 
; Press Esc to terminate script, Pause/Break to "pause"

#include <Excel.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>

; �����ȼ� -> Win + o
HotKeySet("#o", "NextRecord")

Global $row = 2
Global $oExcel = _ExcelBookNew() ;�½�������	
				_ExcelWriteCell($oExcel, "���", 1, 1) 

#Region ### START GUI section ###
$Form1 = GUICreate("��ʼ¼��", 150, 80, -1, -1)
Global $Bon1 = GUICtrlCreateButton("��һ��", 30, 24, 97, 33, 0)

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

