/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_drill)
	exit;	
}
else audio_resume_sound(snd_drill)

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_emitter_gain(global.inst_audio_emitterID[inst_n], (40/dist) * global.sfx_volume)

var inst_player = collision_line(x,y,x-160,y,obj_player,false,true)

if (inst_player > 0) && (sprite_index = spr_drillguard_idle_left)
{
	sprite_index = spr_drillguard_shoot_left
	image_index  = 0
	audio_pause_sound(snd_drill)
}
else if (sprite_index = spr_drillguard_shoot_left) && (image_index == 11)
{
	var inst0 = instance_create_depth(x-16,y-8,depth+1,obj_enemy_eyebot_spread_bullet)
	with(inst0)
	{
		hspd = -5
		shootlimit = 1
		
		sprite_index = spr_bullet_charge1_left
	}
	
	var inst1 = instance_create_depth(x-16,y+12,depth+1,obj_enemy_eyebot_spread_bullet)
	with(inst1)
	{
		hspd = -5
		shootlimit = 1
		
		sprite_index = spr_bullet_charge1_left
	}

	if (audio_is_playing(snd_beamexplosion2))
	{
		audio_stop_sound(snd_beamexplosion2)
		audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
}
else if (sprite_index = spr_drillguard_shoot_left) && (image_index >= image_number-1)
{
	sprite_index = spr_drillguard_idle_left
	image_index = 0
	audio_resume_sound(snd_drill)
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
	
	
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

//get destroyed by spread shot
if (instance_place(x,y,obj_bullet)) && (global.beam_spread_available = 1)
{
    enemy_hurt = 1;
	hp -= 20;
}



xmin = x
xmax = xmin + (sprite_get_width(sprite_width)/2);
ymin = y
ymax = ymin + (sprite_get_height(sprite_height)/2);

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}


//dying
if (hp <= 0)
{
	audio_emitter_free(global.inst_audio_emitterID[inst_n])
	
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()

	if (!audio_is_playing(snd_metalbang))
	{
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
	else if (audio_is_playing(snd_metalbang))
	{
		audio_stop_sound(snd_metalbang)
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
	
	if (instance_exists(inst_block))
	{
		instance_destroy(inst_block)
	}
	
	if (instance_exists(inst_block2))
	{
		instance_destroy(inst_block2)
	}

	instance_destroy();
}

