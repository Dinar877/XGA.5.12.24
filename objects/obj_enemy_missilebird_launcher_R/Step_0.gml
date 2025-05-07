/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_downloading)
	exit;	
}
else audio_resume_sound(snd_downloading)

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],((40/dist)*timer_shoot) *global.sfx_volume)

if (timer_shoot < 1)
{
	timer_shoot += ((1/room_speed)/3)
	
	audio_resume_sound(snd_downloading)
}
else if (timer_shoot >= 1)
{
	audio_pause_sound(snd_downloading)
	timer_shoot = 0
	var inst0 = instance_create_depth(x+8,y-6,depth+1,obj_enemy_missilebird_hitbox)
	with(inst0)
	{	
		hspd = 5
		image_angle = -90
	}
	
	if (audio_is_playing(snd_beamexplosion2))
	{
		audio_stop_sound(snd_beamexplosion2)
		audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
}


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(1)

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
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
	else if (audio_is_playing(snd_metalbang))
	{
		audio_stop_sound(snd_metalbang)
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
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

if (instance_place(x,y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
		audio_stop_sound(snd_metalbang)
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
		
		enemy_hurt = 0.9;
	}
	
    stay = 1;
    enemy_almost_hurt = 0;
	

	
    bullet_hurtenemycode(self)
}



xmin = x
xmax = xmin + (sprite_get_width(sprite_width)/2);
ymin = y
ymax = ymin + (sprite_get_height(sprite_height)/2);

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		enemy_almost_hurt = 0;
		
		audio_stop_sound(snd_metalbang)
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
	
    sword_hurtenemycode()
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

	with(inst2)
		{
			instance_destroy();
		}
	instance_destroy();
}

