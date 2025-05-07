/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;

if (!sprite_exists(spr_font_gray1))
{
	//global.font_spr = sprite_add("text1+2.gif",0,false,false,0,0);
	global.font_gray1 = font_add_sprite_ext(spr_font_gray1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", true, 1);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(global.font_gray1);
}
else if (sprite_exists(spr_font_gray1))
{
	global.font_gray1 = font_add_sprite_ext(spr_font_gray1, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", true, 1);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(global.font_gray1);
}