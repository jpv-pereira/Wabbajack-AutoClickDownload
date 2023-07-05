#NoEnv
SetMouseDelay, 0

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

SysGet, Mon, Monitor, 2

F1::

Loop {

sleep, 1000

ImageSearch, foundx, foundy, %MonLeft%, %MonTop%, %MonRight%, %MonBottom%, E:\Mods\slow-download.png
foundImage := ErrorLevel

If !foundImage {
   WinGetPos, xBrowser, yBrowser, wBrowser, hBrowser, Browser Window
   foundx -= %xBrowser%
   foundy -= %yBrowser%
   
   ControlClick, x%foundx%+20 y%foundy%+20, Browser Window
   sleep, 500
   ;MsgBox, xScreen%foundx%, yScreen%foundy%,x%xBrowser%, y%yBrowser%, w%wBrowser%, h%hBrowser%.
}

}

F2::Reload
F3::ExitApp