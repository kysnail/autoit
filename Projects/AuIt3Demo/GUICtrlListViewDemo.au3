; 使用AutoIt通过桌面图标点击的方式运行程序
; 操作时需要注意：
;
;  1. 在win7系统上，因为左面图标有阴影效果，所以使用取得的x，y值去操作时可能并不能真正的点击到对象上，所以在下面的例子中x、y值都加了10像素。
;
;  2. ControlListView() 的第三个参数可以参照帮助文档，其多种候选值提供了各种丰富的功能。
;
;  3. 因为需要使用_GUICtrlListView_GetItemPositionX()等函数，所以需要在程序开始添加“#Include <GuiListView.au3>”。
;
;  4. 很多工具都提供了类似于run()这样的函数启动应用程序，如果你需要的是准确的模拟用户点击并且又不屑使用按键精灵等完全基于绝对像素坐标的工具，那么下面的方法是一种好的途径。
#Include <GuiListView.au3>

$strProcess =“360安全浏览器 3” ;需要操作的桌面图标名称

$handle = WinGetHandle("Program Manager") ;桌面窗口句柄
$ctrl = ControlGetHandle("Program Manager","","SysListView321")  ;控件句柄
$seIndex = ControlListView($handle,"",$ctrl,"FindItem",$strProcess) ;获取需要操作的图标在父控件中的顺序号，可以使用Accexplorer查看
$seIconX=_GUICtrlListView_GetItemPositionX($ctrl, $seIndex)
$seIconY=_GUICtrlListView_GetItemPositionY($ctrl, $seIndex)
MouseMove($seIconX+10,$seIconY+10)
MouseClick("left", $seIconX+10,$seIconY+10, 2)








