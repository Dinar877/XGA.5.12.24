/// @description Insert description here
// You can write your code in this editor
if (global.shockwave_available <= 0)
{
	active = 0;
	abilitylimitID = 0;
	
	audio_stop_sound(snd_electricity)
	exit;	
}

//if ability is available and hasn't been disabled
active = 1;




if (FadeNow2 > 0)
{ 
	FadeNow2 -= 0.01; 
}


if (global.ability_select = abilitylimitID)
	{
		selected = 1;
		if (global.shockwave <= 0) && (selected_delay <= 0) && (global.shockwave_ammo > 0) 
		{
			FadeNow = 1
		}
	}
else if (global.ability_select != abilitylimitID)
	{
		selected = 0;
		selected_delay = 0
		delay = 1;
		timerup = 0
		FadeNow = 0
		global.shockwave = 0
		if (instance_exists(obj_shockwave_energyrange))
		{
			instance_destroy(obj_shockwave_energyrange)
			audio_stop_sound(snd_electricity)
		}
	}
	
//first delay fadeout goes away
if (selected = 1) && (selected_delay < 2)
{
	selected_delay += 0.05
	if (FadeNow > 0)
	{
		FadeNow -= 0.025
	}
}
else if (selected = 1) && (selected_delay >= 2) && (FadeNow <= 0)
{
	global.shockwave = 1	
	selected_delay = 0
}
	


if (global.shockwave_state = 0)
{
	if (selected == 1)
	{
		sprite_index = spr_ability_shockwave_selected;	
	}
	else sprite_index = spr_ability_shockwave;
}
else if (global.shockwave_state = 1)
{
	if (selected == 1)
	{
		sprite_index = spr_super_ability_shockwave_selected;	
	}
	else sprite_index = spr_super_ability_shockwave;
}



if (selected = 1) && (delay > 0)
{
	delay -= 0.05;	
}

if (global.shockwave == 1) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
 && (global.pause == 0) && (global.pause_exit == 0) && (global.sector_transition == 0) && (global.upgrade_process == 0)
{
	if (global.shockwave_ammo > 0) 
	{
		global.shockwave_ammo -= global.ability_speed
		timerup += 2/room_speed
	}
	else if (global.shockwave_ammo <= 0) 
	{
		global.shockwave = 0;
		global.shockwave_ammo = 0;
		if (instance_exists(obj_shockwave_energyrange))
		{
			instance_destroy(obj_shockwave_energyrange)
			audio_stop_sound(snd_electricity)
		}
		timerup = 0
	}
}

if (global.sector_transition > 0)
{
	global.shockwave = 0;
	global.screen_shake = 0
	timerup = 0
}