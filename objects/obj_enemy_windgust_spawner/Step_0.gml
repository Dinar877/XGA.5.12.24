/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_wind)
	exit;	
}
else
{
	audio_resume_sound(snd_wind)	
}

//audio
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_wind,id.x,id.y,0,20,100,1,true,1000);
}

dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(40/dist) * global.sfx_volume,0)


//getting hurt by shit
var inst41 = (instance_nearest(x,y,obj_bullet))

//enemy_hurt_player_code(1)

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
    bullet_hurtenemycode_noeffect()
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
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()


	instance_destroy(inst1)
	instance_destroy(inst2)
	instance_destroy(inst3)
	instance_destroy(inst4)
	instance_destroy(inst5)
	instance_destroy(inst6)
	instance_destroy(inst7)
	
	with(obj_player)
	{
		vspd_wind = 0	
	}
	
	audio_stop_sound(snd_wind)
	
	instance_destroy();
}

