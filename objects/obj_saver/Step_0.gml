/// @description Insert description here
// You can write your code in this editor

//when the object first spawns
if (switch2 == 0) && (global.loading_startgame != 1)
&& (obj_NEWsav_standbyeffect.stopnow == 0)
{
	switch2 = 1;

	Saving("XGA.SAVEFILE.dat")
}

if (timer1 < 100)
{
	global.shoot_ammo = global.shoot_ammo_start
	
	timer1 += 0.8;
	with(obj_healthnumberten)
		{
				health_total = global.health1
		}
	if (global.health_limit > global.health1)
		{
			global.health1 = lerp(global.health1,global.health_limit+1,0.125)
		}
		
	if (global.nanoshield_available > 0)
	{
		global.nanoshield = 0
		if (global.nanoshield_limit > global.nanoshield_ammo)
		{
			global.nanoshield_ammo = lerp(global.nanoshield_ammo,global.nanoshield_limit+1,0.125)
		}
	}
	
	if (global.invisibility_available > 0)
	{
		global.invisibility = 0
		if (global.invisibility_limit > global.invisibility_ammo)
		{
			global.invisibility_ammo = lerp(global.invisibility_ammo,global.invisibility_limit+1,0.125)
		}
	}
	
	if (global.nuclearblast_available > 0)
	{
		global.nuclearblast = 0
		if (global.nuclearblast_limit > global.nuclearblast_ammo)
		{
			global.nuclearblast_ammo = lerp(global.nuclearblast_ammo,global.nuclearblast_limit+1,0.125)
		}
	}
	
	if (global.shockwave_available > 0)
	{
		global.shockwave = 0
		if (global.shockwave_limit > global.shockwave_ammo)
		{
			global.shockwave_ammo = lerp(global.shockwave_ammo,global.shockwave_limit+1,0.125)
		}
	}
}
else if (timer1 >= 100)
{
	
	audio_stop_sound(snd_saveroom_laser)
	
	with(obj_scrnDark)
	{
		if (saving > 0)
		{
			saving = 0;
			endsaving = 1;
		}
	}
	
	with(obj_NEWsav_activepillar)
	{
		if (sprite_index != spr_NEWsav_lightpillar_saving_end)
		{
			image_index = 0;
			sprite_index = spr_NEWsav_lightpillar_saving_end
		}
	}
	
	with(obj_player_saving)
	{
		if (sprite_index = spr_savepillar_playeruseactive)
		{
			image_index = 0
			image_speed = 1
			if (global.facingDir = 1)
			{
				sprite_index = spr_savepillar_playeruseend_right	
			}
			else if (global.facingDir = -1)
			{
				sprite_index = spr_savepillar_playeruseend_left	
			}
		}
	}
}

//???
if (timer1 >= 100) && (!instance_exists(obj_scrnDark))
{
	
	global.saving = 0;
	global.dead_ending = 0;
	
	audio_stop_sound(snd_saveroom_laser)
}

//for getting out of saving and loading
if (instance_exists(obj_player)) && (global.loading = 0)
{
	global.loading = 0;
	global.loading_startgame = 0;
	
	instance_activate_all()
	with(obj_NEWsav_standbyeffect)
	{
		stopnow = 1
	}
	
	audio_stop_sound(snd_saveroom_laser)
	
	instance_destroy()
}