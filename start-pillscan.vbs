Set WshShell = CreateObject("WScript.Shell")
WshShell.CurrentDirectory = "C:\Scan\pillscan-ai-main"
WshShell.Run "cmd /c npm start", 0, False
