/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x,y+go1,obj_block)) && ((go1 > 0) or (gobullet1 > 0)) && (!place_meeting(x,y+go1,obj_enemy_stalker_sprites))
{
	go1 += 0.2;
	y += go1;
}
else if (place_meeting(x,y+go1,obj_sprites_toad))
{
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	with(instance_place(x,y+go1,obj_sprites_toad))
	{
		enemy_hurt = 1;
		hp -= 1000;
	}
	instance_destroy()
	exit
}
else if (place_meeting(x,y+go1,obj_enemy_grounder_sprites))
{
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	with(instance_place(x,y+go1,obj_enemy_grounder_sprites))
	{
		hp -= 1000;
	}
	instance_destroy()
	exit
}
else if (instance_place(x,y+go1,obj_enemy_stalker_sprites))
{
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	with(instance_place(x,y+go1,obj_enemy_stalker_sprites))
	{
		enemy_hurt = 1;
		hp -= 2000;
	}
	instance_destroy()
	exit
}
else if (instance_place(x,y+go1,obj_enemy_eyebot_spread_sprites))
{
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	with(instance_place(x,y+go1,obj_enemy_eyebot_spread_sprites))
	{
		enemy_hurt = 1;
		hp -= 2000;
	}
	instance_destroy()
	exit
}
else if (place_meeting(x,y+go1,obj_block))
{
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	instance_destroy()
	exit
}

//Getting hurt by player's bullets
var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dash2_spark = 0) && (global.nanoshield <= 0)
{
	audio_stop_sound(snd_rockimpact1)
	audio_stop_sound(snd_rockimpact2)
	audio_stop_sound(snd_rockimpact3)
	
	var decider = round(random_range(0,2))
	
	if (decider == 0)
	{
		var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
	}
	else if (decider == 1)
	{
		var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
	}
	else if (decider == 2)
	{
		var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
	}
	
	snd = audio_sound_gain(snd,global.sfx_volume,0)
	
	with(obj_player)
	{
		if (place_meeting(x,y,obj_block))
		{
			while (position_meeting(x,bbox_top,obj_block))
			{
				y ++;	
			}
		}
	}
	
	enemy_hurt_player_code(1);
	
	instance_create(x,id.bbox_bottom,obj_explosion2)
	
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	instance_create(x,id.bbox_bottom+11,obj_stalictite_piece)
	
	with(obj_stalictite_piece)
	{
		direction2 = round(random_range(1,-1))	
	}
	
	instance_destroy()
	exit
}


//screw attack
if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= hp;
	if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (enemy_hurt = 0)
{
	enemy_hurt = 1;
    stay = 1;
    enemy_almost_hurt = 0;
	gobullet1 = 1
	sword_hurtenemycode()
}

if (instance_place(x,y,obj_bullet)) && (enemy_hurt = 0)
{
    gobullet1 = 1;
	enemy_hurt = 1;
    stay = 1;
    enemy_almost_hurt = 0;
    with((instance_place(x,y,obj_bullet)))
    {
        if (burn = 0)
		{
			if (charge = 1)
			{
					with(instance_place(x,y,obj_stalictite_icecave_spike))
					{
						hp -= 5;
					}
			}
			else if (charge = 0)
			{
					with(instance_place(x,y,obj_stalictite_icecave_spike))
					{
						hp -= 1;
					}
			}
		}
		else if (burn = 1)
		{
			if (charge = 1)
			{
					with(instance_place(x,y,obj_stalictite_icecave_spike))
					{
						hp -= 7;
					}
			}
			else if (charge = 0)
			{
					with(instance_place(x,y,obj_stalictite_icecave_spike))
					{
						hp -= 3;
					}
			}
		}
		hspd = 0;
        vspd = 0;
        
        var xmin1 = x;
        var xmax1 = xmin1 + (sprite_get_width(spr_stalictite_held)/2);
        var ymin1 = y;
        var ymax1 = ymin1 + (sprite_get_height(spr_stalictite_held)/2);
        if (image_index = 0) && (sprite_index != -1)
        {
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit);
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
        }
		
		
		if (global.beam_burn_available = 0)
		{
			if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
	        {
	        sprite_index = spr_bullet_hit;
	        started1 = 1;
	        }
	        if (global.explosiveammo = 1) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
	        {
	        sprite_index = spr_explosion1;
	        started1 = 1;
	        }
	        if (global.upgrade_charge = 1) && (global.charge_shot = 0) && (started1 = 0)
	        {
	        sprite_index = spr_charge1_bullet_hit;
	        started1 = 1;
	        }
	        if (global.upgrade_charge = 1) && (global.charge_shot = 1) && (started1 = 0)
	        {
	        sprite_index = spr_charge2_bullet_hit;
	        started1 = 1;
	        }
		}
		
		if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0)
		{
		sprite_index = spr_explosion5;
        started1 = 1;	
		}
		else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0)
		{
		sprite_index = spr_explosion6;
        started1 = 1;	
		}
        enemy_contact = 1;
	}
}

if (hp <= 0)
{
	if (random_pickup1 <= 3) && (random_pickup1 > 1)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health2);	
	}
	else if (random_pickup1 > 3)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health1);	
	}
	if (random_pickup2 <= 3) && (random_pickup2 > 1)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health2);	
	}
	else if (random_pickup2 > 3)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health1);	
	}
	if (random_pickup3 <= 3) && (random_pickup3 > 1)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health2);	
	}
	else if (random_pickup3 > 3)
	{
		instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_health1);	
	}
	var bulletpickup1 = irandom_range(1,5);
	var bulletpickup2 = irandom_range(1,5);
	var bulletpickup3 = irandom_range(1,5);
	
		if (global.invisibility_available > 0)
		{
			if (bulletpickup1 >= 2) && (bulletpickup1 < 5)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo1_charge);	
			}
			else if (bulletpickup1 >= 4)
			{
				instance_create_layer(random_range(x-2, x+2), random_range(y-2, y+2),layer_get_id("Inst_level_0"), obj_pickup_ammo2_charge);	
			}
		}
	
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
	instance_destroy();
}