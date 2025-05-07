/// @description Insert description here
// You can write your code in this editor
if (global.nanoshield_available <= 0)
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


if (global.ability_select = abilitylimitID) && (nanoshield_hp > 0)
	{
		selected = 1;
		if (global.nanoshield <= 0) && (selected_delay <= 0) && (global.nanoshield_ammo > 0) 
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
		nanoshield_hp = 2
		global.nanoshield = 0
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
	global.nanoshield = 1	
	selected_delay = 0
}
	


if (global.nanoshield_state = 0)
{
	if (selected == 1)
	{
		sprite_index = spr_ui_nanoshieldBG_selected;	
	}
	else sprite_index = spr_ui_nanoshieldBG;
}
else if (global.nanoshield_state = 1)
{
	if (selected == 1)
	{
		sprite_index = spr_super_ui_nanoshieldBG_selected;	
	}
	else sprite_index = spr_super_ui_nanoshieldBG;
}



if (selected = 1) && (delay > 0)
{
	delay -= 0.05;	
}

if (global.nanoshield == 1) && (global.room_transition == 0) && (global.room_transition1 == 0) && (global.room_transition_more == 0) && (global.room_transition_nodoors == 0) && (global.room_transition_nodoors_2 == 0) && (global.room_transition_nodoors_more == 0)
 && (global.pause == 0) && (global.pause_exit == 0) && (global.sector_transition == 0) && (global.upgrade_process == 0)
{
	if (global.nanoshield_ammo > 0) 
	{
		global.nanoshield_ammo -= global.ability_speed
		
		if (global.health1 < global.health_limit) && (global.nanoshield_state = 1)
		{
			global.health1 += 1/room_speed
		}
		
		timerup += 2/room_speed
		if (global.nanoshield_state = 1) && (timerup >= 1)
		{
			timerup = 0
			if (instance_exists(obj_healthnumberten))
			{
				with(obj_healthnumberten)
				{
					health_increase++	
				}
			}
		}
	}
	/*
	else if (global.nanoshield_ammo <= 0) 
	{
		global.nanoshield = 0;
		global.nanoshield_ammo = 0;
		timerup = 0
	}
	*/
}

if (global.sector_transition > 0)
{
	global.nanoshield = 0;
	global.screen_shake = 0
	timerup = 0
}