;----------------------------------------------------------------------------------------
;
; This is a FASM assembly program which show a message box "Hello, Assembly!" on run.
;
;----------------------------------------------------------------------------------------

include '%fasminc%\win64ax.inc'                                                                         ; Use extended ASCII header for Windows 64-bit

.code                                                                                                   ; Start the code section

  _start:                                                                                               ; Create _start function (in this case, main function)
    invoke MessageBox, HWND_DESKTOP, "Hello, Assembly!", "This is my first assembly program.", MB_OK    ; Represented --> Procedure, params... (HWND_DESKTOP means the handle window of desktop, use to draw things to desktop. next is text, title, and messageBox type)

    invoke ExitProcess, 0                                                                               ; Exit the program with code 0 which mean "successful execution"

  .end _start                                                                                           ; End of the function

; Run the program with provided launch.json with F5 Anything extension