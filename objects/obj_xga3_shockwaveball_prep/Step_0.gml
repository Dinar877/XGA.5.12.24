/// @description Insert description here
// You can write your code in this editor
if (explode == false)
{
	if (timer < 1)
	{
		timer += ((1/60)/2);	
		var snd = audio_play_sound(snd_timer,1000,false,global.sfx_volume/15);
		audio_sound_pitch(snd,1.1);
		
		if (initialUp > 0)
		{
			y -= initialUp;
			initialUp--;
		}

	}
	else if (timer >= 1)
	{
		explode = true;
		sprite_index = spr_xga3_shockwaveball_explode;
		image_index = 0;
		var snd = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume);
		audio_sound_pitch(snd,0.9);
		
		instance_create_layer(x-5,y-16,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
		instance_create_layer(x+5,y-8,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
		instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
		instance_create_layer(x-4,y+8,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
		instance_create_layer(x+7,y+16,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
		instance_create_layer(x-11,y,layer_get_id("Inst_level_0"),obj_xga3_shockwave_smallerball);
	}
}

if (explode = true) && (sprite_index = spr_xga3_shockwaveball_explode) && (image_index >= image_number-1)
{
	instance_destroy();
	exit;
}

enemy_hurt_player_code(3)
