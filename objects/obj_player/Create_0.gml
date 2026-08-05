

#region variaveis

//vidas e escudos
vidas = 3
escudos = 3
escudo_on = 0
global.invencibilidade = 0
tempo_invencibilidade = 1
global.tempo_escudo = 2
//tiro
nvl_tiro = 1
atirado = 0
tempo_atirar = 0.16
//fisica
vel = 2
//valores minimos e maximos de power up de tiro
nvl_min = 1
nvl_max = 3

#endregion

#region funçao de movimentaçao e outras funcoes/metodos
//metodo movimento
controla_player = function()
{    //cria uma variavel pra cada tecla e direçao
	dire = keyboard_check(ord("D")) or keyboard_check(vk_right)
	esq = keyboard_check(ord("A")) or keyboard_check(vk_left)
	cima = keyboard_check(ord("W")) or keyboard_check(vk_up)
	baixo = keyboard_check(ord("S")) or keyboard_check(vk_down)
	
	atirando = keyboard_check(vk_space) or mouse_check_button(mb_left)
	
	//de algm modo cria um jeito de andar pros lado e cria uma variavel para v vertical e horizontal :P
	velh = (dire - esq) * vel
	
	x += velh
	
	velv = (cima - baixo) * vel
	
	y -= velv	
}
//metodo desenhar icones
draw_gui = function(_icone = spr_gui_vida, _qtd = 1,_y = 20)
{
	var _x_gui = 40
	
	repeat(_qtd)
	{
		draw_sprite_ext(_icone,0,_x_gui,_y,2,2,0,c_white,0.5)
		_x_gui += 50
	}
}
//metodo de perder vida
perde_vida = function()
{
	if vidas > 0 
		{
			global.invencibilidade = 1
			vidas--
			alarm[3] = tempo_invencibilidade * 60
		}
		else
		{
			audio_play_sound(sfx_lose,1,0)
			instance_destroy()
		}
}

//metodo de perder escudo
perde_escudo = function()

{
	if escudos > 0 and escudo_on = 0
		{
			escudos--
			instance_create_layer(x,y,"isnt_escudo",obj_escudo)
			escudo_on = 1
			global.invencibilidade = 1
			alarm[2] = global.tempo_escudo * 60
		}
}
#endregion

//ta inicinado o escudo com a invencibilidade on, depois de 2 segundso, a animaçao começa a acabar
//porem, quando o alarme toca, ou seja, quando os dois egubndso passa, ele ja perdeu a invencibilidade
//mesmo que a animaçao n terminou de tocar