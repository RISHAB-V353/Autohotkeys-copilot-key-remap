#Requires AutoHotkey v2.0

; ==========================================
; 1. Remap the Copilot Key to Right Control
; ==========================================
*<+<#F23::
{
    Send "{Blind}{LWin Up}{LShift Up}{RCtrl Down}"
}

*<+<#F23 Up::
{
    Send "{RCtrl Up}"
}

; ==========================================
; 2. Alt + Backspace -> Delete to start of line
; ==========================================
!Backspace::      ; Left Alt (and US Right Alt)
<^>!Backspace::   ; AltGr (Right Alt on International layouts)
{
    Send "{Shift Down}{Home}{Shift Up}{Backspace}"
}

; ==========================================
; 3. Alt + Arrows -> Move cursor to start/end
; ==========================================
!Left::
<^>!Left::
{
    Send "{Home}"
}

!Right::
<^>!Right::
{
    Send "{End}"
}

; ==========================================
; 4. Alt + Shift + Arrows -> Select text to start/end
; ==========================================
+!Left::
+<^>!Left::
{
    Send "{Shift Down}{Home}{Shift Up}"
}

+!Right::
+<^>!Right::
{
    Send "{Shift Down}{End}{Shift Up}"
}

; ==========================================
; 5. Alt + Q -> Quit app (like Cmd+Q)
; ==========================================
<!q::
{
    exe := WinGetProcessName("A")
    if (exe = "explorer.exe")  ; don't touch desktop/taskbar
        return
    for hwnd in WinGetList("ahk_exe " exe)
        WinClose("ahk_id " hwnd)
}
