

#region movimentaçao
//movimentaçao basica antes do none ensinar jeito mirabolante, usando WASD ou setinhas

//if keyboard_check(ord("W")) or keyboard_check(vk_up)
//{
//	y -= vel
//}
//if keyboard_check(ord("A")) or keyboard_check(vk_left)
//{
//	x -= vel
//}
//if keyboard_check(ord("S")) or keyboard_check(vk_down)
//{
//	y += vel
//}
//if keyboard_check(ord("D")) or keyboard_check(vk_right)
//{
//	x += vel
//}

controla_player()  //chama a funçao feita no create, assim funcionando no step


//fechando jogo ao apertar esc
if keyboard_check_pressed(vk_escape) game_end()

#endregion

if keyboard_check_pressed(vk_up)
{
	nvl_tiro = 2
}
if keyboard_check_pressed(vk_down)
{
	nvl_tiro = 1
}

show_debug_message(nvl_tiro)


//iniciando uma instancia de obj tiro na camada de tirona posiçao do player
if atirando and atirado == 0 and nvl_tiro == 1
{
	instance_create_layer(x,y,"isnt_tiro",obj_tiro)
	atirado = 1
	alarm[0] = tempo_atirar * 60
}

//tiro 2
if atirando and atirado == 0 and nvl_tiro == 2
{
	instance_create_layer(x-10,y,"isnt_tiro",obj_tiro)
	instance_create_layer(x+10,y,"isnt_tiro",obj_tiro)
	atirado = 1
	alarm[0] = tempo_atirar * 60
}


