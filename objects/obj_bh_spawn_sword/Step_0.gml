/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
Gamepad_getname()
text = text2


if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (image_alpha < 1)
{
	image_alpha += 0.01;
}
else if (image_alpha >= 1)
{
	if (!place_meeting(x,y,obj_block))
	{
		image_angle += 2 + anglePlus;
		anglePlus++;
		vspd += 0.15;
		y += vspd;
	}
	else if (place_meeting(x,y,obj_block))
	{
		var sndId = audio_play_sound(snd_metalcrash2,1000,false);
		audio_sound_gain(sndId,0,0);
		audio_sound_gain(sndId,global.sfx_volume,0);
		audio_sound_gain(sndId,0,500);
		
		instance_create_depth(x,y,id.depth-1,obj_upgrade_sword);
		with(obj_upgrade_sword)
		{
			image_angle = other.image_angle;	
		}
		instance_destroy();
	}
}

//if touch player
if (place_meeting(x,y,obj_player)) && (global.upgrade_process = 0)
{
	instance_create_depth(x,y,id.depth-1,obj_upgrade_sword);
	with(obj_upgrade_sword)
	{
		image_angle = other.image_angle;	
	}
	instance_destroy();
}
