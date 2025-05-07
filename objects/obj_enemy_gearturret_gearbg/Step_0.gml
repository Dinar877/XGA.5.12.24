/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


var player_inrange = (collision_circle(id.x,id.y,180,obj_player,false,true) && (place_meeting(id.x,id.y,obj_camera)))


//play sfx properly
if (!audio_is_playing(emitter_player)) && (player_inrange > 0)
{
	emitter_player = audio_play_sound_at(snd_metalrolling,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume)
}
else if (audio_is_playing(emitter_player)) && (player_inrange <= 0)
{
	audio_stop_sound(emitter_player)
}

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player, (30/dist) * global.sfx_volume, 0)



if (player_inrange > 0) && (attacked = 0) && (global.invisibility <= 0)
{
	if (attackFadeNow <= 0) && (instbullet0 <= 0)
	{
		attackFadeNow = 0.8
		attacked += 0.01
		sprite_index = spr_gearturret_gearpiece_spinfast
	}
}
else if (player_inrange <= 0) && (attacked != 0) && (global.invisibility <= 0)
{
	attackFadeNow = 0
	attacked = 0
	sprite_index = spr_gearturret_gearpiece_spinnormal
}

if (attackFadeNow > 0) && (attacked > 0) && (global.invisibility <= 0) && (player_inrange > 0)
{
	attackFadeNow -= (1/room_speed)
}
else if (attackFadeNow <= 0) && (attacked < 1) && (attacked > 0) && (global.invisibility <= 0) && (player_inrange > 0)
{
	attackFadeNow = 0.8
	attacked += 0.5
}
else if ((attackFadeNow <= 0) && (attacked >= 1) && (attacked > 0) && (player_inrange > 0)) or ((instbullet0 > 0) && (global.invisibility <= 0) && (player_inrange > 0))
{
	attackFadeNow = 0
	attacked = 0
	sprite_index = spr_gearturret_gearpiece_spinnormal
	
	if (instbullet0 <= 0)
	{
		instbullet0 = instance_create_layer(id.x,id.y,layer_get_id("Inst_doors"),obj_enemy_eyebot_spread_bullet)
	}
	
		with(instbullet0)
        {
            if (shootlimit = 0) && (sprite_index != spr_enemy_eyebot_shoteffect)
            {
	            sprite_index = spr_enemy_eyebot_shoteffect;	   
	            shootlimit = 1;		
			}
			else if (shootlimit = 1) && (sprite_index = spr_enemy_eyebot_shoteffect) && (image_index >= image_number-1)
            {
	            sprite_index = spr_bulletSpread_charge1_left;
	           
				var dir = point_direction(id.x,id.y,obj_player.x,obj_player.y)	
				var dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
			   
				image_angle = dir-180
				hspd = lengthdir_x(4,dir)
				vspd = lengthdir_y(4,dir)
			   
	            shootlimit = 1;		
				
				with(other)
				{
					attackFadeNow = 0
					instbullet0 = 0
				}
				
				audio_stop_sound(snd_beam2uncharged)
				var sndy = audio_play_sound(snd_beam2uncharged, 1000, false, global.sfx_volume)
				audio_sound_gain(sndy,0,500)
			}
		}
}
else if (global.invisibility > 0) or (player_inrange <= 0)
{
	attackFadeNow = 0
	attacked = 0
	sprite_index = spr_gearturret_gearpiece_spinnormal
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