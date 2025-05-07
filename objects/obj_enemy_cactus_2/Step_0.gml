/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark)))
{
    hp -= 100;
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

if (place_meeting(x,y,obj_player))
{
    stay = 1;
    enemy_almost_hurt = 0;
	if (enemy_hurt = 0)
	{
		enemy_hurt = 1;
		go = 1
		
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
		
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
		
		if (audio_is_playing(snd_beamexplosion))
		{
			audio_stop_sound(snd_beamexplosion)
			audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		}
		else audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
		
		instance_destroy();
		exit
	}
}

if (instance_place(x,y,obj_bullet))
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
if (instance_place(x,y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		enemy_almost_hurt = 0;
	}
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_slime_spike);
	
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()

	instance_destroy();
}