#SingleInstance Force
#MaxHotkeysPerInterval 9999
#IfWinActive ahk_class DarkSouls2


;Pausar el script
pause:: pause, toggle
;Romper guardia derecha
R::
{
	caminando := GetKeyState("w", "P")
	if caminando
	{
		Send {W up}
		Sleep 200
	}
	Send {W down}{H down}
	Sleep 20
	Send {W up}{H up}
	return
}
;Golpe en salto derecha
C::
{
	caminando := GetKeyState("w", "P")
	if caminando
	{
		Send {W up}
		Sleep 200
	}
	Send {W down}{U down}
	Sleep 20
	Send {W up}{U up}
	return
}
;Remplazar retrazo de clicks por pulsacion de teclas
*~MButton::O
*~LButton::H
*~RButton::U


