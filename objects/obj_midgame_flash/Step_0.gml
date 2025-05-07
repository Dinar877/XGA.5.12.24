/// @description Insert description here
// You can write your code in this editor

//midgame cutscene-flash, explosions from wall, XGA breaking in
if (image_alpha > 0) && (switch1 < 1)
{
	switch1 += ((1/room_speed)/2);
	
	var bboxLR = random_range(((sprite_width)/2)-10,((sprite_width)/2)+10)
	var bboxUD = random_range(((sprite_height)/2)-40,((sprite_height)/2)+40)
	
	if (timer1 >= 1)
	{
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_explosion_random_big);
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_explosion_random_big);
		
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_midgame_wallburst_piece);
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_midgame_wallburst_piece);
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_midgame_wallburst_piece);
		
		instance_create_depth(x+bboxLR,y+bboxUD,id.depth-1,obj_explosion_normalhit_chunk_afterexplosion);
		
		
		audio_stop_sound(snd_beamexplosion)
		audio_stop_sound(snd_beamexplosion1)
		audio_stop_sound(snd_beamexplosion2)
				
		var decider = round(random_range(0,2))
	
		if (decider == 0)
		{
			var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)	
		}
		else if (decider == 1)
		{
			var snd = audio_play_sound(snd_beamexplosion1,1000,false,global.sfx_volume)	
		}
		else if (decider == 2)
		{
			var snd = audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)	
		}
		
		timer1 = 0;
	}
	else timer1 += 0.2
	
	//corruption starts
	if (!instance_exists(obj_midgame_xga_wallburst_hole))
	{
		global.corrupted = 1;
		global.midgame = 1;
		
		if (instance_exists(obj_npc_pressjump))
		{
			obj_npc_pressjump.image_alpha = 0;
		}
		
		instance_create_layer(1056,293,layer_get_id("Instances_3"),obj_midgame_xga_wallburst_hole);
		
		instance_create_layer(1008,329,layer_get_id("Instances_2"),obj_midgame_wallburst_debris1);
		instance_create_layer(1054,331,layer_get_id("Instances_2"),obj_midgame_wallburst_debris2);
		instance_create_layer(1113,332,layer_get_id("Instances_2"),obj_midgame_wallburst_debris3);
		instance_create_layer(996,337,layer_get_id("Instances_2"),obj_midgame_wallburst_debris4);
		instance_create_layer(1063,333,layer_get_id("Instances_2"),obj_midgame_wallburst_debris4);
		
		instance_create(x,y,obj_tileswapper_frozen)
	}
}


//white flash and explosions fade out, XGA slowly revealed
if (image_alpha > 0) && (switch1 >= 1) && (!instance_exists(obj_explosion_random_big))
{
	image_alpha -= ((1/room_speed)/4);
}
else if (image_alpha <= 0) && (switch1 >= 1) && (!instance_exists(obj_explosion_random_big))
{
	instance_destroy();
	
	if (instance_exists(obj_midgame_npc_scientist))
	{
		with(obj_midgame_npc_scientist)
		{
			sprite_index = spr_xga_midgame_eat_scientist
			image_speed = 1
		}
	}
	
	if (instance_exists(object_player2_0_sprites))
	{
		with(object_player2_0_sprites)
		{
			image_speed = 1	
		}
	}
	
	exit;
}