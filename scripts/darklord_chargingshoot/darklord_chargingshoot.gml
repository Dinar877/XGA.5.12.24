// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darklord_chargingshoot(){
	
	//idle to precharging
	if ((sprite_index = spr_darklord_stand_left) or (sprite_index = spr_darklord_walk_left))
	&& (facing = -1)
	{
		image_index = 0;
		sprite_index = spr_darklord_precharging_left;	
	}
	else if ((sprite_index = spr_darklord_stand_right) or (sprite_index = spr_darklord_walk_right))
	&& (facing = 1)
	{
		image_index = 0;
		sprite_index = spr_darklord_precharging_right;	
	}
	
	//precharging woosh sfx
	if (round(image_index) == 2) 
	&& ((sprite_index == spr_darklord_precharging_right) or (sprite_index == spr_darklord_precharging_left))
	{
		audio_stop_sound(snd_player_spinjump_shorter);
		audio_play_sound(snd_player_spinjump_shorter,1000,false);
	}
	
	//go from precharging to charging animation
	if (sprite_index = spr_darklord_precharging_right) && (round(image_index) >= image_number-1)
	{
		image_index = 0;
		sprite_index = spr_darklord_charging_right;
		charging = 0;
	}
	else if (sprite_index = spr_darklord_precharging_left) && (round(image_index) >= image_number-1)
	{
		image_index = 0;
		sprite_index = spr_darklord_charging_left;
		charging = 0;
	}
	
	//charging animations and charging sfx
	if (sprite_index = spr_darklord_charging_right) && (charging < 1)
	{
		//sfx
		if (!audio_is_playing(snd_charging))
		{
			audio_play_sound(snd_charging,1000,false,global.sfx_volume);
		}
		
		charging += ((1/60)/3);
	}
	else if (sprite_index = spr_darklord_charging_left) && (charging < 1)
	{
		//sfx
		if (!audio_is_playing(snd_charging))
		{
			audio_play_sound(snd_charging,1000,false,global.sfx_volume);
		}
		
		charging += ((1/60)/3);
	}
	
	
	
	if (sprite_index = spr_darklord_charging_right) && (charging >= 1)
	{
		audio_stop_sound(snd_charging);
		audio_stop_sound(snd_xga_armbust_fire2)
		snd = audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
		
		image_index = 0;
		sprite_index = spr_darklord_charging_shoot_right;
		
		var insty = instance_create_depth(x+18,y-13,id.depth-1,obj_darklord_explosion_spawner);
		with(insty)
		{
			hspd = 2;	
		}
	}
	else if (sprite_index = spr_darklord_charging_left) && (charging >= 1)
	{
		audio_stop_sound(snd_charging);
		audio_stop_sound(snd_xga_armbust_fire2)
		snd = audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
		
		image_index = 0;
		sprite_index = spr_darklord_charging_shoot_left;
		
		var insty = instance_create_depth(x-22,y-13,id.depth-1,obj_darklord_explosion_spawner);
		with(insty)
		{
			hspd = -2;	
		}
	}
	
	
	
	
	//endchargingshoot to idle
	if (sprite_index = spr_darklord_charging_shoot_left) && (round(image_index) >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_left;	
		snd = -1;
		instbullet0 = 0;
		charging = 0;
	}
	else if (sprite_index = spr_darklord_charging_shoot_right) && (round(image_index) >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_right;
		snd = -1;
		instbullet0 = 0;
		charging = 0;
	}
}