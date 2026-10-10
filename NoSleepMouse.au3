#include <Array.au3>
#include <String.au3> 
#include <AutoItConstants.au3>

$ss=0
$sno=9999999999

HotKeySet("{F1}", "Quit") 
Sleep(1000);Start
Do	
$ss = $ss+1
MouseMove(700, 500, 0) 
MouseMove(600, 500) 
Sleep(1000);
Until $ss=$sno

Sleep(2000)

Func Quit()
	SplashTextOn("Title", "Sleep Mode Off", -1, -1, -1, -1, $DLG_TEXTLEFT, "", 24)
Sleep(1000)
Local $sMessage = ""
SplashTextOn("TitleFoo", $sMessage, -1, -1, -1, -1, $DLG_TEXTLEFT, "")
    Exit 
	Sleep(200)
EndFunc