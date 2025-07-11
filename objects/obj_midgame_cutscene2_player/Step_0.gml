//part 1
if (sprite_index = midgame_cutscene2_player_part1) && (image_index >= image_number-1)
{
	sprite_index = midgame_cutscene2_player_repairing;
	image_index = 0;
	
	audio_play_sound(snd_midgame_suitrepairing,1000,false,global.sfx_volume);
}

//part 2
if (sprite_index = midgame_cutscene2_player_repairing) && (image_index < image_number-1)
{
	if (timer < 1)
	{
		timer += 1/20;	
	}
	else if (timer >= 1)
	{
		timer = 0;
		instance_create_layer(random_range(x-10,x+10),random_range(y-10,y+10),layer_get_id("Inst_doors"),obj_midgame_cutscene2_playershine)
	}
}

if (sprite_index = midgame_cutscene2_player_repairing) && (image_index >= image_number-1)
{
	audio_stop_sound(snd_midgame_suitrepairing);
	audio_stop_sound(snd_cutscene_suit_shine);
	sprite_index = midgame_cutscene2_player_part2;
	image_index = 0;
}

//part 2
if (sprite_index = midgame_cutscene2_player_part2) && (image_index >= image_number-1)
{
	//reset cutscene variables
	global.pause_player = 0;
	global.cutscene = 0;
	global.cutscene_presuit = 0;
	global.cutscene_suit = 0;
	global.cutsceneID[Cutscenes.midgameScientist] = 1;

	//spawn back player objects
	instance_create_layer(644,565,layer_get_id("Inst_level_0"),obj_player);
	with(obj_player)
	{
		//BEAMS
		global.upgrade_charge = 1;
		global.upgradecollected[upgrades.chargeshot] = 1;
		global.beam_spread_available = 1;
		global.upgradecollected[upgrades.spreadshot] = 1;
		
		//ABILITIES
		global.shockwave_available = 1;
		//global.shockwave_limit = 20;
		//global.shockwave_ammo = global.shockwave_limit;
		global.nanoshield_available = 1;
		//global.nanoshield_limit = 20;
		//global.nanoshield_ammo = global.nanoshield_limit;
		global.ability_limit = 2;
		
		//MISC.
		if (global.upgradecollected[upgrades.wallscaler] = 1)
		{
			global.wallscaler = 1;	
		}
		if (global.upgradecollected[upgrades.xVision] = 1)
		{
			global.xvision = 1;	
		}
		if (global.upgradecollected[upgrades.jetjump] = 1)
		{
			global.spacejump = 1;	
		}
		if (global.upgradecollected[upgrades.hydrodash] = 1)
		{
			global.hydrodash = 1;	
		}
		
		//SWORD
		global.sword_available = 1;
		
		
		//UI
		if (instance_exists(obj_ability_shockwave))
		{
			obj_ability_shockwave.active = 1;
		}
		if (instance_exists(obj_ability_nanoshield))
		{
			obj_ability_nanoshield.active = 1;
		}
		
		abilities();
	}
	instance_create_layer(644,566,layer_get_id("Inst_level_0"),object_player2_0_sprites);
	with(object_player2_0_sprites)
	{
		global.facingDir = 1;
		global.suit_pure = 1;
		sprite_index = spr_stand_right_2;
	}
			
	//suit spawn
	instance_create_layer(644,565,layer_get_id("Inst_level_0"),obj_item_Puresuit)	
	
	
	//bh spawn
	instance_create_layer(644,526,layer_get_id("Inst_afterimages"),obj_bh);
	with(obj_bh)
	{
		sprite_index = spr_midgame_cutscene2_bh_bigtosmall;
		image_index = 0;
	}
	
	instance_destroy(obj_midgame_cutscene2_bh);
	instance_destroy();
}