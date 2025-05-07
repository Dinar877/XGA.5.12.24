/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	exit;
}

if (snd > -1)
{
	if (audio_is_playing(snd)) && (audio_sound_get_track_position(snd) >= 1.3)
	{
		audio_stop_sound(snd)
		snd = -1
	}
}

//boss invincibility effect
if (invincible > 0) && (enemy_hurt = 0.9)
{
    invincible -= 1.6;
    flashwhite_limit += 0.1; 
}
if (invincible <= 1) && (flashwhite_limit > -1) && (enemy_hurt = 0.9)
{
    invincible +=1 - flashwhite_limit;
}
if (flashwhite_limit >= 1) && (flashwhite_limit > 0) && (enemy_hurt = 0.9)
{
    invincible = 0;
    flashwhite_limit = 0;
	enemy_hurt = 0
}

if (image_index >= image_number-1)
{
		audio_stop_sound(snd_swordswoosh)
		instance_destroy()	
		exit
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}