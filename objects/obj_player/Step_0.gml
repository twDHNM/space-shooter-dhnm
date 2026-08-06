

#region movimentaçao


controla_player()  //chama a funçao feita no create, assim funcionando no step




#endregion



#region DEBUG

if keyboard_check_pressed(vk_enter) and !global.invencibilidade perde_vida()





//aumentando e diminuindo o valor do tiro
if keyboard_check_pressed(ord("P"))
{
	nvl_tiro++
}
if keyboard_check_pressed(ord("O"))
{
	nvl_tiro--
}

#endregion



#region CONTROLES

//nao deixando passar o nivel de tiro nem pra baixo nem pra cima
if nvl_tiro >= nvl_max nvl_tiro = 3
else if nvl_tiro <= nvl_min nvl_tiro = 1


//iniciando uma instancia de obj tiro na camada de tirona posiçao do player (tiro 1)
if atirando and atirado == 0 and nvl_tiro == 1
{
	instance_create_layer(x,y-5,"isnt_tiro",obj_tiro)
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

//tiro 3
if atirando and atirado == 0 and nvl_tiro == 3
{
	instance_create_layer(x-10,y,"isnt_tiro",obj_tiro)
	instance_create_layer(x,y-5,"isnt_tiro",obj_tiro)
	instance_create_layer(x+10,y,"isnt_tiro",obj_tiro)
	atirado = 1
	alarm[0] = tempo_atirar * 60
}



//usar escudo
if keyboard_check_pressed(ord("E")) perde_escudo()


#endregion




