/// @description Insert description here
// You can write your code in this editor
draw_self()

//go back, box
draw_sprite_ext(spr_bg_navigational2_exitbox,0,x+2,y+24,1,1,0,c_white,image_alpha)
draw_sprite_ext(spr_bg_navigational2_backbox,0,x+10,y+50,1,1,0,c_white,image_alpha)

//text
draw_text_color(x+10,y+28,text,c_white,c_white,c_white,c_white,image_alpha)
draw_text_color(x+10,y+39,text1,c_white,c_white,c_white,c_white,image_alpha)
draw_text_color(x+50,y+50,textback,c_white,c_white,c_white,c_white,image_alpha)

//select icon
draw_sprite_ext(spr_fast_travel_select_icon,0,155,85,1,1,0,c_white,image_alpha)