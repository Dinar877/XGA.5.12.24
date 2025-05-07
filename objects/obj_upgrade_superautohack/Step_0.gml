/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
Gamepad_getname()
text = " NOW THE AUTO HACK WILL OPEN OTHERWISE INDESTRUCTIBLE, GREY-EYED DOORS. ";

if FadeNow > 0 
{ 
FadeNow -= 0.01; 
}
else if FadeNow <= 0
{
FadeNow = 0.5;
}

if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if touch player
if (place_meeting(x,y,obj_player)) && (global.upgrade_process = 0)
{
	audio_stop_sound(snd_player_footstep)
	audio_stop_sound(snd_player_hang)
	audio_stop_sound(snd_player_climb)
	audio_stop_sound(snd_player_screwattack)
	var snd = irandom_range(snd_pickup1,snd_pickup2)
	audio_play_sound(snd,1,false,global.sfx_volume)
	with(obj_player)
	{
		hspd = 0;
        vspd = 0;
            global.turning = 0;
            global.hang = 0;
            global.climbing = 0;
            global.dashbegin = 0;
            global.dashcharge = 0;
            global.dashuse = 0;
            global.dashend = 0;
            global.walljump = 0;
            global.dead_begin = 0;
            global.hurt = 0;	
			sprite_index = spr_player
			if (place_meeting(x,y,obj_block))
			{
				while (place_meeting(x,y,obj_block))
				{
					y--	
				}
			}
	}
	global.upgrade_process = 1;
	global.superautohack= 1;
	/*
	global.beam_burn_ammo = 50;
	global.beam_burn_limit = 50;
	if (!place_meeting(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1, obj_ammo_bg1))
	{
	instance_create_layer(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ammo_bg3);
	}
	else if (place_meeting(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1, obj_ammo_bg1))
	{
	instance_create_layer(__view_get( e__VW.XView, 0 )+114,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ammo_bg3);
	}
	else if (place_meeting(__view_get( e__VW.XView, 0 )+93,__view_get( e__VW.YView, 0 )+1, obj_ammo_bg1)) && (place_meeting(__view_get( e__VW.XView, 0 )+114,__view_get( e__VW.YView, 0 )+1, obj_ammo_bg2))
	{
	instance_create_layer(__view_get( e__VW.XView, 0 )+135,__view_get( e__VW.YView, 0 )+1,layer_get_id("Inst_healthui"),obj_ammo_bg3);
	}
	*/
	
	
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition)
	instance_create_layer(obj_camera.x-160,obj_camera.y-20,layer_get_id("Inst_healthui2"),obj_upgradeprocess_text_underside);
	
	var tex = instance_create_layer(obj_camera.x-50,obj_camera.y-16,layer_get_id("Inst_healthui"),obj_texty_generic_upgrade);

	with(tex)
	{
		text = " SUPER AUTO HACK";
		spd = 1;
		spawnerID = other.id;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	
	var tex2 = instance_create_layer(obj_camera.x-128,obj_camera.y,layer_get_id("Inst_healthui"),obj_texty_generic_upgrade);

	with(tex2)
	{
		text = " NOW THE AUTO HACK WILL OPEN OTHERWISE INDESTRUCTIBLE, GREY-EYED DOORS. ";
		spd = 1;
		spawnerID = other.id;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
}

if (global.upgradecollected[upgradeID] = 1)
{
	instance_destroy()	
}