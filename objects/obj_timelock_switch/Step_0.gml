/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
{
	exit;	
}


if (instance_place(id.x,id.y,obj_bullet))
{
	bullet_hurtenemycode_noeffect()
}
	
if (on == true) && (instance_exists(obj_timelock_lock))
{
	on = false;
	
	with(obj_timelock_lock)
	{
		sprite_index = spr_timelock_opening;
		image_index = 0;
	}

	
	var snd = audio_play_sound(snd_gate_opening,1000,false,global.sfx_volume);
	audio_sound_gain(snd,0,1300);
	audio_sound_pitch(snd,1.5);
	
	with(obj_timelock_line)
	{
		instance_destroy();
	}
	
	instance_create_depth(obj_player.x, obj_player.y-20, depth-1, obj_timelock_clock);
	instance_create_depth(obj_player.x, obj_player.y-20, obj_timelock_clock.depth-1, obj_timelock_clockhand);
	
	audio_play_sound(snd_ticking,1000,false,global.sfx_volume);
}
