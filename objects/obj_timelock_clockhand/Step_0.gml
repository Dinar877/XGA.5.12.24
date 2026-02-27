/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
&& (!instance_exists(obj_timelock_clock))
{
	exit;	
}

x = obj_timelock_clock.x;
y = obj_timelock_clock.y;

//gets very accurate time 
elapsedSeconds += delta_time / 1000000.0


if (elapsedSeconds < timeLimit)
{
	var progress = min(1.0, elapsedSeconds / timeLimit);
	image_angle = startAngle + progress * 360.0; // Clockwise full 360° rotation
	
	if (!audio_is_playing(snd_ticking))
	{
		audio_play_sound(snd_ticking,1000,false,global.sfx_volume);
	}
}
else if (elapsedSeconds >= timeLimit)
{
	elapsedSeconds = 0;
	
	with(obj_timelock_switch)
	{
		instance_create_depth(x,y,depth+1,obj_timelock_line);
	}
	
	with(obj_timelock_lock)
	{
		sprite_index = spr_timelock_shutting;
		image_index = 0;
		open = false;
	}
	
	audio_stop_sound(snd_ticking);
	
	instance_destroy(obj_timelock_clock);
	instance_destroy();
}