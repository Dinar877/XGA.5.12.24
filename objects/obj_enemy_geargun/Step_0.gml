/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}



var player_inrange = collision_circle(id.x,id.y,35,obj_player,false,true)

if (player_inrange > 0) && (sprite_index != spr_geargun_shoot) && (global.invisibility <= 0)
{
	sprite_index = spr_geargun_shoot
	if (!audio_is_playing(snd_beamexplosion))
	{
		snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1200)
	}
	else if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1200)
	}
}
else if (sprite_index = spr_geargun_shoot) && (image_index >= image_number-1)
{
	sprite_index = spr_geargun_idle
}


			



//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(2)

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
	
	if (!audio_is_playing(snd_metalbang))
	{
		sndhurt = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(sndhurt,0,1500)
	}
	else if (audio_is_playing(snd_metalbang))
	{
		audio_stop_sound(snd_metalbang)
		sndhurt = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(sndhurt,0,1500)
	}
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}


if (place_meeting(id.x,id.y,obj_bullet))
{	
    bullet_hurtenemycode_noeffect()
}


//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}


//dying
if (hp <= 0)
{
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
	
	if (!audio_is_playing(snd_metalcrash))
	{
		sndhurt = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		audio_sound_gain(sndhurt,1,0)
		audio_sound_gain(sndhurt,0,1500)
	}
	else if (audio_is_playing(snd_metalcrash))
	{
		audio_stop_sound(snd_metalcrash)
		sndhurt = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		audio_sound_gain(sndhurt,1,0)
		audio_sound_gain(sndhurt,0,1500)
	}
	
	audio_stop_sound(snd)
	
	if (instbullet0 > 0)
	{
		instance_destroy(instbullet0)
	}
	
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_gear_piece);
	
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
	instance_create(random_range(id.bbox_left, id.bbox_right), random_range(id.bbox_top, id.bbox_bottom), obj_explosion_random);
		
	instance_destroy();
}