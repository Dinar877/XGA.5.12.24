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
	FadeNow = 0.5;
}

if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if we have enough charge boosters for the instacharge upgrade
if (global.charge_booster >= 1.4) && (global.upgradecollected[upgrades.instacharge] == 0)
&& (!instance_exists(obj_upgrade_instacharge))
{
	//create insta charge
	instance_create_depth(x,y,id.depth-1,obj_upgrade_instacharge);
	obj_upgrade_instacharge.other_upgradeID = upgradeID; //transfer over this item's upgradeID value to the instatcharge object
	
	//destroy self
	instance_destroy();
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
	global.charge_booster += 0.1;
	
	text2 = " ACCELERATES THE CHARGE BEAM ATTACK BY 10%. CURRENT BONUS : " + string(global.charge_booster*100) + "% FASTER."
	text = text2
	
	Item_upgradegot_effect()

}

if (global.upgradecollected[upgradeID] = 1)
{
	instance_destroy()	
}
