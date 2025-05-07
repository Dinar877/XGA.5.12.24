/// @description Insert description here
// You can write your code in this editor
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

if (global.pause_status)
{
	if (global.suit_pure)
	{
		if (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+84,layer_get_id("Inst_healthui2"),obj_TOXIC_SUIT);
		}
	}
	if (global.spacejump)
	{
		if (!place_meeting(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,obj_ScrewJump))  && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,layer_get_id("Inst_healthui2"),obj_InfinityBOOTS);
		}
		else if (place_meeting(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,obj_ScrewJump)) && (place_free(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+130)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+130,layer_get_id("Inst_healthui2"),obj_InfinityBOOTS);
		}
	}
	if (global.screwjump)
	{
		if (!place_meeting(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,obj_InfinityBOOTS))  && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,layer_get_id("Inst_healthui2"),obj_ScrewJump);
		}
		else if (place_meeting(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+120,obj_InfinityBOOTS)) && (place_free(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+130)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+5,__view_get( e__VW.YView, 0 )+130,layer_get_id("Inst_healthui2"),obj_ScrewJump);
		}
	}
	if (global.upgrade_charge)
	{
		if (!place_meeting(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,obj_SpreadBeam)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,layer_get_id("Inst_healthui2"),obj_Chargebeam);
		}
		else if (place_meeting(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,obj_SpreadBeam)) && (place_free(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+106)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+106,layer_get_id("Inst_healthui2"),obj_Chargebeam);
		}
	}
	if (global.beam_spread_available)
	{
		if (!place_meeting(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,obj_Chargebeam)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,layer_get_id("Inst_healthui2"),obj_SpreadBeam);
		}
		else if (place_meeting(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+96,obj_Chargebeam)) && (place_free(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+106)) && (drawn = 0)
		{
		instance_create_layer(__view_get( e__VW.XView, 0 )+261,__view_get( e__VW.YView, 0 )+106,layer_get_id("Inst_healthui2"),obj_SpreadBeam);
		}
	}
	drawn = 1;
}

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

script_execute(Gamepad_variables);