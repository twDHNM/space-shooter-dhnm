
//iniciando debug | comandos de debug
if keyboard_check_pressed(vk_tab) global.debug = !global.debug



//fechando jogo ao apertar esc
if keyboard_check_pressed(vk_escape) game_end()
if keyboard_check_pressed(ord("R")) game_restart()

if global.existe = 0 
{
	existo = "Não"
}
else if global.existe = 1
{
	existo = "Sim"
}
 