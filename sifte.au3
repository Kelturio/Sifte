HotKeySet("{TAB}", "BurpFart")
HotKeySet("{DEL}", "ExitApp")
HotKeySet("{L}", "BurpFartLoop")
HotKeySet("{1}", "Burp")
HotKeySet("{2}", "Fart")

Main()

Func Main()
	While 42
		BurpFartLoop()
		Sleep(Random(300e3, 600e3, 1))
	WEnd
EndFunc   ;==>Main

Func BurpFart()
	Local $r = (Random(0, 1, 1)) ? Burp() : Fart()

EndFunc   ;==>BurpFart

Func BurpFartLoop()
	$r = Random(6, 9, 1)
	For $i = 0 To $r Step 1
		BurpFart()
		Sleep(166)
	Next
EndFunc   ;==>BurpFartLoop

Func Burp()
	SoundPlay("SFX_BURP.wav")
EndFunc   ;==>Burp

Func Fart()
	SoundPlay("SFX_FART.wav")
EndFunc   ;==>Fart

Func ExitApp()
	Exit
EndFunc   ;==>ExitApp
