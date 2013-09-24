#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\ico.ico
#AutoIt3Wrapper_Outfile=Temp_Cleaner.exe
#AutoIt3Wrapper_Res_LegalCopyright=2013 - AutoIT Software
#AutoIt3Wrapper_Res_Language=1033
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 Title: CCleaner Temp Cleaner Automated
 AutoIt Version: 3.3.8.1
 Author:         Alejandro Merino

 Script Function:
	Automate CCleaner Temp Cleaner

#ce ----------------------------------------------------------------------------

; AutoIT Options--------------------------------------------------------------->
#region AutoIT Options

; Require Admin

; Hide program's tray icon
AutoItSetOption("TrayIconHide", 1)

#endregion
;------------------------------------------------------------------------------>

; Main Function --------------------------------------------------------------->

_Main()

Func _Main()

	_TempCleaner_Start()


EndFunc ; ==>_Main Function

;------------------------------------------------------------------------------>

; Functions-------------------------------------------------------------------->

Func _TempCleaner_Start()

	; Start CCleaner
	Run("Utilities\TempCleaner\ccleaner\ccleaner.exe")

	;Get Focus on CCleaner
	WinWaitActive("Piriform CCleaner")
	WinActivate("Piriform CCleaner")

	;Start Cleaning
	ControlClick("Piriform CCleaner","","[CLASSNN:Button2]")

	;Wait till CCleaner is finished cleaning
	WinWaitActive("Piriform CCleaner","CLEANING COMPLETE")
	Sleep(500)

	;Close CCleaner
	WinClose("Piriform CCleaner")
	WinWaitClose("Piriform CCleaner")

EndFunc ; ==>_TempCleanter_Start Function