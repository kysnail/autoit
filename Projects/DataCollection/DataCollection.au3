; FILENAME DataCollection.au3
; PURPOSE: ��������������ϲ������ݣ���ת�浽 Excel �С�
; CREATED BY: @kysnail at home
; NOTE: 
;       Ϊ�˷����ȡ���ݣ�ͨ���Զ����Ƶķ�ʽ���Զ��ӿ�������ж�ȡ���ݣ������л��ܡ�
;       
; RESOURCE: 
; 
; 
; Press Esc to terminate script, Pause/Break to "pause"

#include <Excel.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>

; �����ȼ� -> Win + o
HotKeySet(" ", "NextRecord")

; ��ÿռ��ı�
Global $var1 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]") 
Global $var2 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
Global $var3 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
Global $row = 2

Global $oExcel = _ExcelBookNew() ;�½�������	
				_ExcelWriteCell($oExcel, "����", 1, 1) ;д�����һ��
                _ExcelWriteCell($oExcel, "320nm", 1, 2) 
				_ExcelWriteCell($oExcel, "360nm", 1, 3)
	            _ExcelWriteCell($oExcel, "405nm", 1, 4)	

#Region ### START Koda GUI section ### Form= ;��������������ť������ ��ݼ� -> �ȼ�
$Form1 = GUICreate("��ʼ¼��", 360, 81, -1, -1)
Global $Bon1 = GUICtrlCreateButton("��һ��", 30, 24, 97, 33, 0)
Global $Bon2 = GUICtrlCreateButton("����", 130, 24, 97, 33, 0)
Global $Bon3 = GUICtrlCreateButton("����", 230, 24, 97, 33, 0)
Dim $AccelKeys[2][2]=[[" " , $Bon1], ["a", $Bon2]]  ;ָ����ݼ������Ǵ��ڲ������ʱ���ݼ������ã�Ϊʲô����ôŪ�°�����
GUISetAccelerators($AccelKeys)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
   $nMsg = GUIGetMsg()	
  
   Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 Exit
	  Case $Bon1
		 NextRecord($var1, $var2, $var3, $row)
		 $row = $row + 1
	  ;	 MsgBox(0, "-----------" & $row, "----------------------------")
	  Case $Bon2                                  ;������԰�ť
		 ControlClick("P2pSearcher","����" ,1001) ; win info ��ȡ����Ϣ����û�� ������ı��������ʽ��ôд������
	  Case $Bon3                                ;���"����"
		 MsgBox(0,"��������",$i-1)
		 $j = 0
		 _ExcelBookSaveAs($oExcel,"d:\����.xls", "xls", 0, 1) ; ���������ļ�
   EndSwitch		   
WEnd

Func NextRecord($val1, $val2, $val3, $row)
   $var1 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
   $var2 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
   $var3 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
   _ExcelWriteCell($oExcel, $row-1, $row, 1)     
   _ExcelWriteCell($oExcel, $var1, $row, 2) 
   _ExcelWriteCell($oExcel, $var2, $row, 3)
   _ExcelWriteCell($oExcel, $var3, $row, 4)  
   $row = $row + 1
	;MsgBox(0, "-----------" & $row, "----------------------------")
	
EndFunc

Func abc($val1, $val2, $val3, $row)
   MsgBox(0, "-----------", "----------------------------")
EndFunc

