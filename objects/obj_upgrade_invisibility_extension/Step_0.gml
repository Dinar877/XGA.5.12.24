/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
Gamepad_getname()
text = text2

if FadeNow > 0 
{ 
FadeNow -= 0.01; 
}
else if FadeNow <= 0
{
FadeNow = 0.8;
}

if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if touch player
if (place_meeting(x,y,obj_player)) && (global.upgrade_process = 0)
&& (global.room_transition = 0) && (global.room_transition1 = 0) && (global.room_transition_more = 0)
&& (global.room_transition_nodoors = 0) && (global.room_transition_nodoors_2 = 0) && (global.room_transition_nodoors_more = 0)
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
	}
	global.upgrade_process = 1;
	
	if (global.mode_recommended > 0)
	{
		global.invisibility_limit += 3;
	}
	else global.invisibility_limit += 3;
	
	//invisibility available
	global.invisibility_available = 1;
	global.upgradecollected[upgrades.invisibility] = 1;

	global.invisibility_ammo = global.invisibility_limit;
	if (!instance_exists(obj_ability_invisibility))
	{
		global.ability_limit += 1;
		
		global.invisibility_limit = 10
		global.invisibility_ammo = global.invisibility_limit;
		
		var inst = instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_ability_invisibility)
		with(inst)
		{
			abilitylimitID = global.ability_limit	
		}
	}
	global.invisibility_available = 1;
	global.invisibility = 0;
	
	Item_upgradegot_effect()
}

if (global.upgradecollected[upgradeID] = 1)
{
	instance_destroy()	
}

