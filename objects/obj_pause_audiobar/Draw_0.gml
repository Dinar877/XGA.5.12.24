  /// @description Insert description here
// You can write your code in this editor
draw_set_font(font_regular1)

draw_self();
draw_text_color(x+10,y+3,text,c_white,c_white,c_white,c_white,1)

//draw arrows
if (selected > 0)
{
	if (left_key_pressed)
	{
		draw_sprite_ext(spr_pause_options_arrow_leftactive,0,x-14,y-1,1,1,0,c_white,1)
		draw_sprite_ext(spr_pause_options_arrow_rightinactive,0,x+64,y-1,1,1,0,c_white,1)
	}
	else if (right_key_pressed)
	{
		draw_sprite_ext(spr_pause_options_arrow_rightactive,0,x+64,y-1,1,1,0,c_white,1)
		draw_sprite_ext(spr_pause_options_arrow_leftinactive,0,x-14,y-1,1,1,0,c_white,1)
	}
	else
	{
		draw_sprite_ext(spr_pause_options_arrow_leftinactive,0,x-14,y-1,1,1,0,c_white,1)	
		draw_sprite_ext(spr_pause_options_arrow_rightinactive,0,x+64,y-1,1,1,0,c_white,1)	
	}
}
else
{
	draw_sprite_ext(spr_pause_options_arrow_leftinactive,0,x-14,y-1,1,1,0,c_white,1)	
	draw_sprite_ext(spr_pause_options_arrow_rightinactive,0,x+64,y-1,1,1,0,c_white,1)
}
