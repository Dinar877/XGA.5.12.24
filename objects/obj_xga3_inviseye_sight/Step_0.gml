/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(inst_ball))
{
	exit;	
}

if (go == false)
{
	if (image_alpha < 1)
	{
		image_alpha += (1/60)/3;
		
		if (sndID > 0)
		{
			audio_sound_gain(sndID, image_alpha, 0);
		}
	}
	else if (image_alpha >= 1)
	{
		go = true;
		inst_ball.go = true;
	}
}

if (place_meeting(x,y,obj_player)) && (detected == false) && (global.invisibility = 0)
{
	detected = true;
	audio_stop_sound(sndID);
	instance_create_layer(obj_player.x,obj_player.y,layer_get_id("Inst_doors"),obj_xga3_inviseye_thunder);
	
	instance_destroy(inst_ball);
	instance_destroy();
}