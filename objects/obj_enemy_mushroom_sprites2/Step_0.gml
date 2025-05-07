//everything else
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (inst2 > -1)
{
	x = inst2.x;
	y = inst2.y;
}


if (rotatenow > 0)
{
	originalangle = image_angle
	new_angle = image_angle+90
	rotatenow = 0
}

if (originalangle > image_angle)
{
	image_angle = lerp(image_angle,new_angle,0.2)	
}

//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0)&& (global.hurt2 = 0) && (global.nanoshield <= 0)
{
    global.hurt = 1;
	global.healthKiller = 1;
}

//screw attack
if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1)) && (hp > 0)
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

if (hp <= 0)
{
	bullet_hurtenemycode_item()
	with(inst2)
	{
		instance_destroy();
	}
	instance_destroy();
}
