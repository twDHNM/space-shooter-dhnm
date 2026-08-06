

draw_self()
draw_set_font(ft_padrao)

if global.debug
{
	draw_text_ext_transformed(x,y,"existo? " + string(existo),5,300,.7,.7,image_angle)
}