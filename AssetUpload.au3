Local $i = 1

While($i < 10)
   WinWait("Open", "File &name")
   WinActivate("Open", "File &name");
   WinWaitActive("Open", "File &name");
   Sleep(2000);
   ControlFocus("Open","",1148);
   ControlSetText("Open","",1148,$CmdLine[i]);
   Sleep(2000)
   ControlClick("Open","",1)
   $i = $i+1
WEnd


Winwait("Confirm - Aspera Connect")
While (WinExists("Confirm - Aspera Connect"))
	WinActivate("Confirm - Aspera Connect")
	Sleep(500)
	ControlClick("Confirm - Aspera Connect","_allowBtnWindow","[CLASS:Qt5QWindowIcon; INSTANCE:4]")
	Sleep(1000)
WEnd