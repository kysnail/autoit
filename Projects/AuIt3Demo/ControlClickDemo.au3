; ControlClick
; 打开一个名为 Mao 的记事本
;
;
;
WinActivate("Mao")
; 通过菜单打开退出选项
Sleep(800)
Send("!f")
Sleep(800)
Send("x")
; ControlClick 的第三个参数是按钮的文本显示
ControlClick("记事本", "", "取消")
; 此处为右键操作
ControlClick("", "", "", "right")


; au3模拟鼠标点击之ControlClick
; ControlClick :向指定控件发送鼠标点击命令，比MouseClick可靠
; ControlClick ( “标题”, “文本”, 控件ID [, 按钮 [, 点击次数 [, X坐标 [, Y坐标 ]]]] )
; 标题：目标窗口标题。
; 文本：目标窗口文本。
; 控件ID：要进行交互的控件。
; 按钮：[可选] 要点击的按钮, 可以是”left”(左键), “right”(右键), “middle”(中键), “main”(主要), “menu”(菜单), “primary”(主键), “secondary”(次键)，默认为left(左键)。
; 点击次数：[可选] 要点击鼠标按钮的次数，默认值为 1。
; X坐标：[可选] 要点击控件的位置(X坐标)，默认为控件中心。
; Y坐标：[可选] 要点击控件的位置(Y坐标)，默认为控件中心。
; 返回 1表示点击成功，返回 0点击失败。
; ControlClick鼠标模拟示例：
; ControlClick(“计算器”,””,”[CLASS:Button; INSTANCE:15]”)   ;Button15数字6
; ControlClick(“计算器”,””,”Button23″)    ;模拟点击计算器窗口的Button23“+”
; ControlClick(“[CLASS:CalcFrame]”,””,”Button16″)  ;模拟点击数字3
; ControlClick(“[CLASS:CalcFrame]”,””,”[ID:121]”)   ;模拟点击=
; ControlClick (‘Program Manager’, ”, ‘SysListView321′, ‘left’, 2, 36, 31)   ;双击桌面图标

