HotKeySet("{F1}", "ExitScript") ; Bind F1 to exit
HotKeySet("{F2}", "ContinueScript") ; Bind F2 to continue

Global $continueFlag = False

While True
    ; Press "X" 100 times
    For $i = 1 To 100005
        Send("x")
        Sleep(5) ; Adjust delay if needed
    Next

    ; Prompt user
    MsgBox(64, "Action Required", "Press F1 to exit or F2 to continue.")

    ; Wait for user input
    $continueFlag = False
    While True
        Sleep(100)
        If $continueFlag Then
            ; Pause for manual configuration
            MsgBox(64, "Paused", "Configure your screen manually, then press Enter to continue.")
            
            ; Wait for Enter key
            While True
                If _IsPressed("0D") Then ; Enter key
                    Sleep(200) ; Small buffer
                    Send("{ENTER}")
                    ExitLoop
                EndIf
                Sleep(100)
            WEnd
            ExitLoop
        EndIf
    WEnd
WEnd

Func ExitScript()
    MsgBox(64, "Exiting", "Script will now exit.")
    Exit
EndFunc

Func ContinueScript()
    $continueFlag = True
EndFunc

#include <Misc.au3>
