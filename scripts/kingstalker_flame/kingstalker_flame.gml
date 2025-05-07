// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kingstalker_flame(){
	
	if (facing = -1) && (sprite_index != spr_kingstalker_flame_left)
	{
		image_index = 0
		sprite_index = spr_kingstalker_flame_left
	}
	else if (facing = 1) && (sprite_index != spr_kingstalker_flame_right)
	{
		image_index = 0
		sprite_index = spr_kingstalker_flame_right
	}
	
	if (floor(image_index) == 8) && (!audio_is_playing(snd_magma))
	{
		audio_play_sound(snd_magma,1000,false,global.sfx_volume)
	}
	
	if (floor(image_index) == 17)
	{
		audio_stop_sound(snd_magma)
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1100,false,global.sfx_volume)	
		
		
		var instbullet0 = instance_create_layer(x+(95*facing),y-10,layer_get_id("Inst_doors"),obj_boss_kingstalker_fireball)
	
			with(instbullet0)
	        {
	            if (shootlimit = 0)
	            {
					hspd = obj_boss_kingstalker_sprites.facing*4
		            shootlimit = 1;		
				}
	        }
		
	}

	if (image_index >= image_number-1)
	{
		if (facing = -1) && (sprite_index = spr_kingstalker_flame_left)
		{
			image_index = 0
			sprite_index = spr_kingstalker_idle_left
		}
		else if (facing = 1) && (sprite_index = spr_kingstalker_flame_right)
		{
			image_index = 0
			sprite_index = spr_kingstalker_idle_right
		}
		
		audio_stop_sound(snd_beamexplosion)	
		
		State_machine_switch_state(kingstalker_idle)
	}

}