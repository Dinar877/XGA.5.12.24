/// @description Insert description here
// You can write your code in this editor
if (image_index >= image_number-1) && (image_speed > 0) && (sprite_index = spr_bg_navigational2)
{
	sprite_index = spr_bg_navigational2_shine
	if (text_drawn = 0)
	{
		audio_stop_sound(snd_preboss)
		
		instance_create_depth(x+12,y+22,self.depth-1,obj_text_spawning_biome1_2)
		text_drawn = 1;
	}
}

if (image_index >= image_number-1) && (sprite_index = spr_bg_navigational2_rev)
{
	instance_destroy(obj_text_spawning_biome1_2)
	with(object_player2_0_sprites)
	{
		textspawnerID = obj_text_spawning_0_1	
	}
	instance_destroy()
}

if (sprite_index = spr_bg_navigational2_shine)
{
	if (surface2_alpha <= 0) && (surface2neg == 1)
	{
		surface2neg = 0;
		surface2pos = 1;
	}
	else if (surface2_alpha > 0) && (surface2neg == 1)
	{
		surface2_alpha -= 0.002;
	}

	if (surface2_alpha >= 0.3) && (surface2pos == 1)
	{
		surface2neg = 1;
		surface2pos = 0;
	}
	else if (surface2_alpha < 0.3) && (surface2pos == 1)
	{
		surface2_alpha += 0.002;
	}
}