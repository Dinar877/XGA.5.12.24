// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darklord_shoot(){

	if (sprite_index != spr_darklord_shoot_left) && (facing = -1)
	{
		image_index = 0
		sprite_index = spr_darklord_shoot_left;	
	}
	else if (sprite_index = spr_darklord_shoot_left) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_left;	
		snd = -1
		instbullet0 = 0
	}
	
	if (sprite_index != spr_darklord_shoot_right) && (facing = 1)
	{
		image_index = 0
		sprite_index = spr_darklord_shoot_right;	
	}
	else if (sprite_index = spr_darklord_shoot_right) && (image_index >= image_number-1)
	{
		State_machine_switch_state(darklord_idle);
		sprite_index = spr_darklord_stand_right;
		snd = -1
		instbullet0 = 0
	}
	
	
	if (floor(image_index) == 14)
	{
			audio_stop_sound(snd_beamexplosion1)
			audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)
		
			audio_stop_sound(snd_xga_armbust_fire2)
			snd = audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume)
			audio_sound_gain(snd,0,1500)
		
			if (instbullet0 <= 0)
			{
				if (facing < 0)
					{
						instance_create_layer(id.x-20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						instance_create_layer(id.x-20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						var leftbehind = instance_create_layer(id.x-20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						var leftbehind2 = instance_create_layer(id.x-20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						
						with(obj_darklord_armburst_piece)
						{
							direction1 = -1	
						}
						with(leftbehind)
						{
							direction1 = -1	
							startx = 3
						}
						with(leftbehind2)
						{
							direction1 = -1	
							startx = 3
						}
					}
				else if (facing > 0)
					{
						instance_create_layer(id.x+20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						instance_create_layer(id.x+20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						var leftbehind = instance_create_layer(id.x+20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
						var leftbehind2 = instance_create_layer(id.x+20,id.y-10,layer_get_id("Inst_doors"),obj_darklord_armburst_piece)
					
						with(obj_darklord_armburst_piece)
						{
							direction1 = 1	
						}
						with(leftbehind)
						{
							direction1 = 1	
							startx = 3
						}
						with(leftbehind2)
						{
							direction1 = 1	
							startx = 3
						}
					}
				instbullet0 = 1
			}
			
	}
}