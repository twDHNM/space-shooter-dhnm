

#region variaveis


vel = 2
atirado = 0
tempo_atirar = 0.16

#endregion

#region funçao de movimentaçao e outros

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

#endregion

