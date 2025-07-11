// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function white_soldier_shoot(){
	
	if (sprite_index = spr_white_soldier_shoot_left) && (round(image_index) == 0)
	{
		var instbullet0 = instance_create_layer(x-10,y,layer_get_id("Inst_doors"),obj_enemy_white_soldier_bullet)
		
		//sfx
		audio_stop_sound(snd_beam2charged);
		var sndy1 = audio_play_sound(snd_beam2charged,1000,false,global.sfx_volume);
		audio_sound_gain(sndy1,0,1000);
		audio_sound_pitch(sndy1,0.5);
	
	
	
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_whitesoldier_bullet;
		            hspd = -3;
		            vspd = 0;
		            shootlimit = 1;
				}
	        }
	}
	else if (sprite_index = spr_white_soldier_shoot_right) && (round(image_index) == 0)
	{
		var instbullet0 = instance_create_layer(x+10,y,layer_get_id("Inst_doors"),obj_enemy_white_soldier_bullet);
		
		//sfx
		audio_stop_sound(snd_beam2charged);
		var sndy1 = audio_play_sound(snd_beam2charged,1000,false,global.sfx_volume);
		audio_sound_gain(sndy1,0,1000);
		audio_sound_pitch(sndy1,0.5);
		
		with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
		            sprite_index = spr_whitesoldier_bullet;
		            hspd = 3;
		            vspd = 0;
		            shootlimit = 1;
				}
	        }
	}
	
	if (image_index >= image_number-1)
	{
		State_machine_switch_state(white_soldier_stand)	
		
		if (facing = 1)
		{
			sprite_index = spr_white_soldier_stand_right	
		}
		else if (facing = -1)
		{
			sprite_index = spr_white_soldier_stand_left	
		}
		
		exit
	}

}