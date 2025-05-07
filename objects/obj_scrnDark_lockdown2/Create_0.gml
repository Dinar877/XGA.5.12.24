/// @description Insert description here
// You can write your code in this editor
endload = 0;
endload2 = 0;
endload3 = 0;
saving = 0;
endsaving = 0;
FadeNow = 1.0;
timerup = 0;
timerdown = 0;
upgradeID = 0;

surface_nav = -1;
surface2_nav = -1;
surface3_nav = -1;


started1 = 0;
started2 = 0;
surface2neg = 0;
surface2pos = 0;
navigation_effect_index = 0;

timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_navigation_greenflash, "fade_color");
NewColor = shader_get_uniform(shd_fade_navigation_greenflash, "NewColor");

n = 0;
text_drawn = 0;


if (!sprite_exists(spr_text_navigational))
{
	//global.font_spr = sprite_add("text1+2.gif",0,false,false,0,0);
	global.font_gray1 = font_add_sprite_ext(spr_text_navigational, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!1234567890", true, 1);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(global.font_gray1);
}
else if (sprite_exists(spr_text_navigational))
{
	global.font_gray1 = font_add_sprite_ext(spr_text_navigational, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!1234567890", true, 1);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_font(global.font_gray1);
}