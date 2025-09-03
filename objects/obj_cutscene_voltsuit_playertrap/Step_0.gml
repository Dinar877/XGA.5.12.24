/// @description Insert description here
// You can write your code in this editor
if (timer < 1)
{
	timer += (1/room_speed)/8	
}
else timer = 1

if (timer >= 1) && (sprite_index == spr_cutscene_endgame_playertrapped_off)
{
	image_index = 0	
	sprite_index = spr_cutscene_endgame_playertrapped_turningon
}

//turning on
if (sprite_index == spr_cutscene_endgame_playertrapped_turningon) && (image_index < image_number-1)
{
	if (floor(image_index) == 36) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 37) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 61) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 62) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 63) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 64) //end buzz
	{
		audio_stop_sound(snd_player_corruption_buzzing)
	}
	else if (floor(image_index) == 75) //buzz
	&& (!audio_is_playing(snd_player_corruption_buzzing))
	{
		sndID = audio_play_sound(snd_player_corruption_buzzing,1000,false,global.sfx_volume);
	}
}
else if (sprite_index == spr_cutscene_endgame_playertrapped_turningon) && (image_index >= image_number-1)
{
	sprite_index = spr_cutscene_endgame_playertrapped_escape;
	
	audio_stop_sound(snd_player_corruption_buzzing)
	sndID = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume);
	sndID = audio_play_sound(snd_xga_stab_effect,1000,false,global.sfx_volume);
	sndID = audio_play_sound(snd_sword_wave,1000,false,global.sfx_volume);
	
	//explosions
	instance_create_layer(438,234,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(462,315,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(451,290,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(438,234,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(455,305,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(503,299,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(515,220,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(421,252,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(399,223,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(399,225,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(438,234,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(462,315,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(451,290,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(438,234,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(455,305,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(503,299,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(515,220,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(421,252,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(399,223,layer_get_id("Inst_doors"),obj_explosion_random)
	instance_create_layer(399,225,layer_get_id("Inst_doors"),obj_explosion_random)
	
	//pieces of sealers
	instance_create_layer(473,243,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(451,279,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(460,278,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(442,279,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(445,287,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(457,287,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(422,244,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(419,255,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(426,250,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(481,244,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(474,250,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(482,252,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(471,257,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(431,245,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(430,255,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	instance_create_layer(445,290,layer_get_id("Inst_level_0"),obj_blockerdoor_piece)
	
	
	with(obj_blockerdoor_piece)
	{
		var randNum = (round(random_range(0,3)))
		
		if (randNum == 0)
		{
			sprite_index = spr_cutscene_endgame_playertrapped_piece1
		}
		else if (randNum == 1)
		{
			sprite_index = spr_cutscene_endgame_playertrapped_piece2
		}
		else if (randNum == 2)
		{
			sprite_index = spr_cutscene_endgame_playertrapped_piece3
		}
		else if (randNum == 3)
		{
			sprite_index = spr_cutscene_endgame_playertrapped_piece4
		}
		
		if (y > 257) //bottom cables
		{
			direction2 = 1;
			direction1 = sign(random_range(1,-1))
		}
		else if (x > 460) //right cables
		{
			direction1 = 1
			direction2 = sign(random_range(1,-1))
		}	
		else if (x < 432) //left cables
		{
			direction1 = -1
			direction2 = sign(random_range(1,-1))
		}	
	}
	
	
}

//player escaping
if (sprite_index == spr_cutscene_endgame_playertrapped_escape) && (image_index < image_number-1)
{
	if (floor(image_index) == 31) //somersault
	&& (!audio_is_playing(snd_player_spinjump_shorter))
	{
		sndID = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 34) //land
	&& (!audio_is_playing(snd_player_land))
	{
		sndID = audio_play_sound(snd_player_land,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 72) //head move
	&& (!audio_is_playing(snd_robot_move_1))
	{
		sndID = audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 88) //head move
	&& (audio_is_playing(snd_robot_move_1))
	{
		audio_stop_sound(snd_robot_move_1)
		sndID = audio_play_sound(snd_robot_move_1,1000,false,global.sfx_volume);
	}
	else if (floor(image_index) == 110) //get up
	&& (!audio_is_playing(snd_robot_move_2))
	{
		sndID = audio_play_sound(snd_robot_move_2,1000,false,global.sfx_volume);
	}
	
	//move camera down once player starts falling
	if (floor(image_index) >= 24)
	{
		with(obj_camera_intro)
		{
			y = lerp(y,310,0.02)
		}
	}
}
else if (sprite_index == spr_cutscene_endgame_playertrapped_escape) && (image_index >= image_number-1)
{
	global.pause_player = 0;
	global.cutscene = 0;
	global.lockdown_facingDir = 0;
	global.facingDir = 1;
	
	instance_activate_all()
	
	audio_stop_sound(snd_robot_move_1)
	audio_stop_sound(snd_robot_move_2)
	
	with(obj_link_healthUI)
	{
		image_alpha = 0;	
	}
	
	obj_player.x = 454
	obj_player.y = 309
	with(obj_player)
	{
		State_machine_switch_state(Idle)	
	}
	
	object_player2_0_sprites.x = 454
	object_player2_0_sprites.y = 310
	with(object_player2_0_sprites)
	{
		sprite_index = spr_stand_right_2	
	}
	
	__view_set( e__VW.Object, 0, obj_camera);
	obj_camera.x = 454
	obj_camera.y = 309
	
	instance_destroy();
}