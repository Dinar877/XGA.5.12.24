/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1)
{
	image_speed = 0	
}

if (FadeNow > 0) 
{ 
	FadeNow -= 0.05; 
}


if (image_alpha < 1) && (killswitch = 0)
{
	image_alpha += (0.9/room_speed)
}

if (image_alpha > 0) && (killswitch = 1)
{
	image_alpha -= (2/room_speed)
}
else if (image_alpha <= 0) && (killswitch = 1)
{
	instance_destroy()
	audio_stop_sound(snd_electricity)
	exit;
}

if (instance_place(id.x,id.y,obj_autohack_lock)) && (image_alpha >= 1) && (killswitch = 0)
{
	with(instance_place(id.x,id.y,obj_autohack_lock))
	{
		sprite_index = spr_autohack_door_opening
	}
	var snd = audio_play_sound(snd_electricity,1001,false,global.sfx_volume)
	audio_sound_set_track_position(snd,2)
	killswitch = 1
	FadeNow = 1
}
else if (instance_place(id.x,id.y,obj_superautohack_lock)) && (image_alpha >= 1) && (killswitch = 0)
{
	with(instance_place(id.x,id.y,obj_superautohack_lock))
	{
		sprite_index = spr_superautohack_door_opening
	}
	var snd = audio_play_sound(snd_electricity,1001,false,global.sfx_volume)
	audio_sound_set_track_position(snd,2)
	killswitch = 1
	FadeNow = 1
}