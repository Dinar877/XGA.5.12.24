// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kingstalker_bite(){
	
	if (facing = -1) && (sprite_index != spr_kingstalker_bite_left)
	{
		image_index = 0
		sprite_index = spr_kingstalker_bite_left
	}
	else if (facing = 1) && (sprite_index != spr_kingstalker_bite_right)
	{
		image_index = 0
		sprite_index = spr_kingstalker_bite_right
	}
	
	//sfx
	if (floor(image_index) == 19)
	{
		audio_stop_sound(snd_monsterbite_2)
		audio_play_sound(snd_monsterbite_2,1000,false,global.sfx_volume)	
	}

	if (floor(image_index) >= image_number-1)
	{
		if (facing = -1) && (sprite_index = spr_kingstalker_bite_left)
		{
			image_index = 0
			sprite_index = spr_kingstalker_idle_left
		}
		else if (facing = 1) && (sprite_index = spr_kingstalker_bite_right)
		{
			image_index = 0
			sprite_index = spr_kingstalker_idle_right
		}
		
		State_machine_switch_state(kingstalker_idle)
	}

}