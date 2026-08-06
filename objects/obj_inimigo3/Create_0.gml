
randomise()

vida = 20

contador = 0

decidi_direcao = false

estado = "chegando"
tempo_carregando = 2 * 60

criado_em_sequence = in_sequence

#region FUNÇOES

//CHANCE DE UPGRADE
chance_pu = function()
{
	var _chance_pu = random(100)
	
	if _chance_pu >= 90 instance_create_layer(x,y,layer,obj_pup1)
	
}
//FUNCAO DE PERDER VIDA
perde_vida = function()
{
	
	if vida <= 0
	{
		instance_create_layer(x,y,layer,obj_particula_explosao)
		audio_play_sound(sfx_explosion,1,0)
		instance_destroy()
	}
	
}

//STATE MACHINE

maquina_de_estados = function()
{
	
	switch(estado)
	{
		case "chegando":
		{
			if y < 160
			{
				y += 1.2 
			}
			else
			{
				estado = "carregando"
			}
		}
		break
		
		case "carregando":
		{
			y = y
			tempo_carregando--
			if tempo_carregando <= 0 
			{
				estado = choose("atirando","atirando2")
				tempo_carregando = 2 * 60
			}
			
		}
		break
		
		case "atirando":
		{
			
			if global.existe == 1
			{
				var _dir = point_direction(x,y, obj_player.x, obj_player.y)
				var _tiro = instance_create_layer(x,y,"isnt_tiro",obj_tiroinimigo3a)
				_tiro.vspeed = 2
				_tiro.direction = _dir
				_tiro.image_angle = _dir + 90
				estado = "carregando"
				contador += 1
				if contador == 3 estado = "fugindo"
			}
			
		}
		break
		
		case "atirando2":
		{
			var _tiro2 = instance_create_layer(x,y,"isnt_tiro",obj_tiroinimigo3b)
			var _tiro3 = instance_create_layer(x,y,"isnt_tiro",obj_tiroinimigo3b)
			var _tiro4 = instance_create_layer(x,y,"isnt_tiro",obj_tiroinimigo3b)
			//tiro reto
			_tiro2.vspeed = 4
			//tiro direita
			_tiro3.vspeed = 4
			_tiro3.hspeed = 4
			//tiro esquerda
			_tiro4.vspeed = 4
			_tiro4.hspeed = -4
			estado = "carregando"
			contador += 1
			if contador == 3 estado = "fugindo"
		}
		break
		
		case "fugindo":
		{
			if decidi_direcao == false
			{
				hspeed = choose(-1,1)
				decidi_direcao = true
			}
			vspeed = -1
			
			if y <= -80 instance_destroy()
			
		}
		break
	}
	
	
}



#endregion