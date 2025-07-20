/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
&& (!instance_exists(obj_timelock_clock))
{
	exit;	
}

x = obj_timelock_clock.x;
y = obj_timelock_clock.y;


if (timer1 < timeLimit)
{
	timer1 += timer1speed;
	
	image_angle = timer1;
	
	if (!audio_is_playing(snd_ticking))
	{
		audio_play_sound(snd_ticking,1000,false,global.sfx_volume);
	}
}
else if (timer1 >= timeLimit)
{
	timer1 = 0;
	
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