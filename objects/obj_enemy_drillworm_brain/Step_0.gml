/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (instance_exists(inst2) > 0) && (instance_exists(inst4) > 0)
{
	image_angle = inst4.image_angle;

	
	if (inst4.image_angle = 0)
	{
		x = inst2.x;
		y = inst2.y+3;
	}
	else if (inst4.image_angle = 180)
	{
		x = inst2.x;
		y = inst2.y-3;
	}
}
else
{
	instance_destroy()
	exit
}

//getting hurt by shit
var inst5 = (instance_nearest(x,y,obj_bullet))

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

if (instance_place(id.x,id.y,obj_bullet))
{
    with(inst4)
	{
		if (enemy_hurt = 0)
		{
		enemy_hurt = 0.9;
		}
	    stay = 1;
	    enemy_almost_hurt = 0;
	}
	bullet_hurtenemycode(self)
	
	if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9;
		}
	stay = 1;
	enemy_almost_hurt = 0;
	
	with(inst4)
	{
		hp = other.hp	
	}
}

	//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    with(inst4)
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
	
	if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9;
		}
	stay = 1;
	enemy_almost_hurt = 0;
}


if (inst2 > 0)
{

	xmin = (instance_place(x,y,obj_enemy_drillworm_hitbox)).x;
	xmax = xmin + (sprite_get_width(sprite_index)/2);
	ymin = (instance_place(x,y,obj_enemy_drillworm_hitbox)).y;
	ymax = ymin + (sprite_get_height(sprite_index)/2);





	//dying
	if (hp <= 0)
	{
		audio_stop_sound(snd_rockimpact1)
		
		if (sword_deadswitch = 0)
		{
			bullet_hurtenemycode_item()
		}
		else sword_hurtenemycode_item()

				with(inst2)
				{
					audio_emitter_free(global.inst_audio_emitterID[inst_n])
					instance_destroy();
				}
				instance_destroy();
		}

}