/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	audio_pause_sound(snd_beehive)
	exit;	
}
else
{
	audio_resume_sound(snd_beehive)	
}

//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_beehive,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume)
}

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(10/dist) * global.sfx_volume,0)




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
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
	bullet_hurtenemycode(self)
}



xmin = x;
xmax = xmin + (sprite_get_width(spr_flynest)/2);
ymin = y;
ymax = ymin + (sprite_get_height(spr_flynest)/2);

if (hp <= 0) && (fallanim = 0) && (fallanimy <= 0)
{
	if (place_meeting(x,y,obj_block))
	{
		while (place_meeting(x,y,obj_block))
		{
			y++
		}
	}
	else fallanimy = 2
}

if (hp <= 0) && (fallanim = 0) && (fallanimy > 0)
{
	y+= fallanimy;
	if (fallanimy < 8)
	{
		fallanimy += 0.1;
	}
	
	if (place_meeting(x,bbox_bottom+fallanimy,obj_block)) && (fallanimy >= 1)
	{
		fallanim = 1
		
		while (!place_meeting(x,y+1,obj_block))
		{
			y++
		}
	}
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
if (hp <= 0) && (fallanim = 1)
{
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
		
	audio_stop_sound(snd_beehive)
	
	instance_create(x,y, obj_explosion6);
	instance_create(x,y, obj_explosion_random);
	instance_create(x,y, obj_explosion_random);
	instance_destroy();
}