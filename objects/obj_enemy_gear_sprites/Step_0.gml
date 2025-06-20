/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_metalrolling,id.x,id.y,0,30,100,1,true,1000,global.sfx_volume)
}

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(30/dist) * global.sfx_volume,0)



x = inst2.x;
y = inst2.y+3;


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

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
		
		audio_stop_sound(snd_metalbang)
		snd = audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)
		audio_sound_gain(snd,0,1500)
	}
    stay = 1;
    enemy_almost_hurt = 0;
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	//audio
	if (audio_is_playing(snd_metalrolling))
	{
		audio_stop_sound(snd_metalrolling)
	}
	
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
	
	if (!audio_is_playing(snd_metalcrash))
	{
		snd = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1500)
	}
	else if (audio_is_playing(snd_metalcrash))
	{
		audio_stop_sound(snd_metalcrash)
		snd = audio_play_sound(snd_metalcrash,1000,false,global.sfx_volume)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1500)
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
	
		with(inst2)
		{
			instance_destroy();
		}
		instance_destroy();
}
