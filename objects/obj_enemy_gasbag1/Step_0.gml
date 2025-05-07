/// @description Insert description here
// You can write your code in this editor
//everything else
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

inst_player = collision_rectangle(id.x-50,id.y-32,id.x+50,id.y+32,obj_player, false,true);

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




if (instance_place(id.x,id.y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    bullet_hurtenemycode(self)
}


//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
	}
    stay = 1;
    enemy_almost_hurt = 0;
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
	
	instance_destroy();
}

if (hp > 0) && (global.invisibility <= 0)
{
	if (sprite_index = spr_enemy_gasbag_sprites_idle) && (inst_player > -1)
	{
		sprite_index = spr_enemy_gasbag_sprites_shoot
		image_index = 0
	}
	else if (sprite_index = spr_enemy_gasbag_sprites_shoot) && (floor(image_index) == 10)
	{
		if (!audio_is_playing(snd_beam2charged))
		{
			var sndy = audio_play_sound(snd_beam2charged,1000,false,global.sfx_volume)
			audio_sound_gain(sndy,0,500)
		}
	}
	else if (sprite_index = spr_enemy_gasbag_sprites_shoot) && (image_index >= image_number-1)
	{
		sprite_index = spr_enemy_gasbag_sprites_idle
		image_index = 0
	}
}
