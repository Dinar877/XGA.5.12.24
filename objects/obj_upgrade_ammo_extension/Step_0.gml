 /// @description Insert description here
// You can write your code in this editor
/////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

//upgradetrue-array: detects whether item has spawned before or not
//upgradecollected-array: detects whether item has been collected before or not




//code
Gamepad_variables()
Gamepad_getname()
text = " INCREASES TOTAL AMMO CAPACITY BY +3.";

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
			if (place_meeting(x,y,obj_block))
			{
				while (place_meeting(x,y,obj_block))
				{
					y--	
				}
			}
	}
	global.upgrade_process = 1;
	
	global.shoot_ammo_start+=3
	global.shoot_ammo = global.shoot_ammo_start
	
	Item_upgradegot_effect()
}

if (global.upgradecollected[upgradeID] = 1)
{
	instance_destroy();
}