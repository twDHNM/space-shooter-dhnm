
if escudo_on = 1
{
	image_speed = 0
	image_index = 12
}

if escudo_on = 0
{
	global.invencibilidade = 0
	instance_destroy()
}