/// @description Insert description here
// You can write your code in this editor
if (global.invisibility_available <= 0)
{
	active = 0;
	abilitylimitID = 0;
	
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
		if (global.invisibility <= 0) && (selected_delay <= 0) && (global.invisibility_ammo > 0) 
		{
			FadeNow = 1
		}
	}
else if (global.ability_select != abilitylimitID)
	{
		selected = 0;
		selected_delay = 0
		delay = 1;
		FadeNow = 0
		global.invisibility = 0;
	}
	
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
	global.invisibility = 1	
	selected_delay = 0
}

if (global.invisibility_state = 0)
{
	if (selected == 1)
	{
		sprite_index = spr_ability_invisibility_selected;	
	}
	else sprite_index = spr_ability_invisibility;
}
else if (global.invisibility_state = 1)
{
	if (selected == 1)
	{
		sprite_index = spr_super_ability_invisibility_selected;	
	}
	else sprite_index = spr_super_ability_invisibility;
}



if (selected = 1) && (delay > 0)
{
	delay -= 0.05;	
}

if (global.invisibility == 1) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
 && (global.pause == 0) && (global.pause_exit == 0) && (global.sector_transition == 0) && (global.upgrade_process == 0) && (((global.shoot = 0) && (global.invisibility_state = 0)) or (global.invisibility_state = 1))
{
	if (global.invisibility_ammo > 0) 
	{
		global.invisibility_ammo -= global.ability_speed
	}
	else if (global.invisibility_ammo <= 0) 
	{
		global.invisibility = 0;
		global.invisibility_ammo = 0;
	}
}

if (global.sector_transition > 0) or ((global.shoot = 1) && (global.invisibility_state = 0))
{
	global.invisibility = 0;
	global.screen_shake = 0
}