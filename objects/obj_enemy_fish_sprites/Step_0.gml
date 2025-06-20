/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}



if (instance_exists(inst2) > 0)
{
	x = inst2.x;
	y = inst2.y+idleY;
}
else
{
	instance_destroy()
	exit
}

//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_underwater_moving, inst2.x, inst2.y, 0, 10, 50, 1, true, 1000)
}

//audio
dist = point_distance(inst2.x, inst2.y, obj_player.x, obj_player.y)
audio_sound_gain(emitter_player, 10/dist, 0)



if (idleY > 2)
{
	idleswitch1 = 0;
	idleswitch2 = 1;
}
else if (idleY < -2)
{
	idleswitch1 = 1;
	idleswitch2 = 0;
}

if (idleswitch1)
{
	idleY += 0.025;	
}
else if (idleswitch2)
{
	idleY -= 0.025;	
}

x = inst2.x;
y = inst2.y+idleY;

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



xmin = (instance_place(x,y,obj_enemy_fish_hitbox)).x;
xmax = xmin + (sprite_get_width(spr_fish_left)/2);
ymin = (instance_place(x,y,obj_enemy_fish_hitbox)).y;
ymax = ymin + (sprite_get_height(spr_fish_left)/2);

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
	//audio
	if (audio_is_playing(snd_underwater_moving))
	{
		audio_stop_sound(snd_underwater_moving)
	}
	
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()

		with(inst2)
		{
			instance_destroy();
		}
		instance_destroy();
}

