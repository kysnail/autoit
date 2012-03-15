; FILENAME DataCollection.au3
; PURPOSE: 从仪器控制软件上捕获数据，并转存到 Excel 中。
; CREATED BY: @kysnail at home
; NOTE: 
;       为了方便获取数据，通过自动控制的方式，自动从控制软件中读取数据，并进行汇总。
;       
; RESOURCE: 
; 
; 
; Press Esc to terminate script, Pause/Break to "pause"

#include <Excel.au3>
#include <GUIConstantsEx.au3>
#include <GUIConstants.au3>

; 设置热键 -> Win + o
HotKeySet(" ", "NextRecord")

; 获得空间文本
Global $var1 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]") 
Global $var2 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
Global $var3 = ControlGetText("P2pSearcher", "","[CLASS:Edit; INSTANCE:1]")
Global $row = 2

Global $oExcel = _ExcelBookNew() ;新建工作表	
				_ExcelWriteCell($oExcel, "波长", 1, 1) ;写入表格第一行
                _ExcelWriteCell($oExcel, "320nm", 1, 2) 
				_ExcelWriteCell($oExcel, "360nm", 1, 3)
	            _ExcelWriteCell($oExcel, "405nm", 1, 4)	

#Region ### START Koda GUI section ### Form= ;建立三个工作按钮并给予 快捷键 -> 热键
$Form1 = GUICreate("开始录入", 360, 81, -1, -1)
Global $Bon1 = GUICtrlCreateButton("下一组", 30, 24, 97, 33, 0)
Global $Bon2 = GUICtrlCreateButton("测样", 130, 24, 97, 33, 0)
Global $Bon3 = GUICtrlCreateButton("保存", 230, 24, 97, 33, 0)
Dim $AccelKeys[2][2]=[[" " , $Bon1], ["a", $Bon2]]  ;指定快捷键，但是窗口不激活的时候快捷键不能用，为什么？怎么弄下啊！？
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
	  Case $Bon2                                  ;点击测试按钮
		 ControlClick("P2pSearcher","搜索" ,1001) ; win info 获取的信息里面没有 标题和文本，这个格式怎么写啊！？
	  Case $Bon3                                ;点击"保存"
		 MsgBox(0,"分析数量",$i-1)
		 $j = 0
		 _ExcelBookSaveAs($oExcel,"d:\数据.xls", "xls", 0, 1) ; 保存数据文件
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

