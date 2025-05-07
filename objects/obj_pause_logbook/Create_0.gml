/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 3;
selected = 0;
delay = 1;

//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;


global.font_gray1 = -1;
//global.font_spr = -1;
drawn = 0;

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

//button remapping
if (!instance_exists(obj_BUTTONREMAPPING))
{
	instance_create_layer(x-100,y+30,layer_get_id("Inst_healthui"),obj_BUTTONREMAPPING);
}

script_execute(Gamepad_variables);