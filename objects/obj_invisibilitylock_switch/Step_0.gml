/// @description Insert description here
// You can write your code in this editor
if (redblockerID <= 0)
{
	if (instance_exists(obj_invisibility_lock))
	{
		redblockerID = obj_invisibility_lock.redblockerID;
	}
}


if (instance_place(id.x,id.y,obj_bullet))
{
	bullet_hurtenemycode_noeffect()
}
	
if (on > 0) && (instance_exists(obj_invisibility_lock)) && (off > 0)
{
	with(obj_invisibility_lock)
	{
		sprite_index = spr_invisibility_lock_shutting
		image_speed = 1
	}
	on = 0
	off = 0
	
	var snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
	audio_sound_gain(snd,0,1300)
	
	with(obj_invisibility_line)
	{
		instance_destroy()	
	}
}
