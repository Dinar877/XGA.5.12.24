/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_regular1)
draw_self();
draw_text_color(x+10,y+3,text,c_white,c_white,c_white,c_white,image_alpha)

if (waiting == 0)
	{
		draw_text_color(x+164,y+3,new_input_name,c_white,c_white,c_white,c_white,image_alpha)
	}
else if (waiting == 1)
	{
		draw_text_color(x+164,y+3,"INPUT...",c_white,c_white,c_white,c_white,image_alpha)
	}