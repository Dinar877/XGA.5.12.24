/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if no xga hitbox object
if (!instance_exists(inst2))
{
	instance_destroy();
	exit;	
}




x = inst2.x;
y = inst2.y-15; //(ht:16) -22 //(ht:30) -15 //(ht:32, -14) //(ht 32) //-12 (ht 36) //-9


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (hp > 0) && (global.pierce_killswitch = 0)
{
	enemy_hurt_player_code(4)
}



//invincible visual effect
if (invincible > 0) && (enemy_hurt = 0.9)
{
    invincible -= 1.6;
    flashwhite_limit += 0.1; 
}
if (invincible <= 1) && (flashwhite_limit > -1) && (enemy_hurt = 0.9)
{
    invincible +=1 - flashwhite_limit;
}
if (flashwhite_limit >= 1) && (flashwhite_limit > 0) && (enemy_hurt = 0.9)
{
    invincible = 0;
    flashwhite_limit = 0;
	enemy_hurt = 0
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

if (place_meeting(x,y,obj_player)) && (global.pierce_killswitch = 0) && (global.darkeater_active = 0)
{
	global.darkeater_active = 1	
	
	audio_group_stop_all(audiogroup_music)
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)
	audio_stop_sound(global.sector_music)
}



//screw attack
if (place_meeting(x,y,obj_player)) 
&& ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) 
&& (hp > 0)
&& (global.pierce_killswitch = 0)
{
    if (enemy_hurt < 0.9)
	{
		hp -= 16
						
		enemy_hurt = 0.9;
		enemy_almost_hurt = 0;
		
		//sfx
		if (!audio_is_playing(snd_stomp))
		{
			var sndu = audio_play_sound(snd_stomp,1000,false,global.sfx_volume)
			audio_sound_gain(sndu,0.25,0)
		}
		else if (audio_is_playing(snd_stomp))
		{
			audio_stop_sound(snd_stomp)
			var sndu = audio_play_sound(snd_stomp,1000,false,global.sfx_volume)
			audio_sound_gain(sndu,0.25,0)
		}
		
		if (!audio_is_playing(snd_xga_scream))
		{
			var sndu1 = audio_play_sound(snd_xga_scream,1000,false,global.sfx_volume)
			audio_sound_pitch(sndu1, 1+random_range(-0.1,0.1))
		}
		else if (audio_is_playing(snd_xga_scream))
		{
			audio_stop_sound(snd_xga_scream)
			var sndu1 = audio_play_sound(snd_xga_scream,1000,false,global.sfx_volume)
			audio_sound_pitch(sndu1, 1+random_range(-0.1,0.1))
		}
	}
	
	global.darkeater_active = 1
	
	
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)

	
	with(obj_darkeater_hitbox)
	{
		State_machine_switch_state(darkeater_hurt)	
		exit
	}
}

if (place_meeting(x,y,obj_jumpsparkattack)) && (hp > 0)  && (global.pierce_killswitch = 0)
{
	if (enemy_hurt < 0.9)
	{
		hp -= 16
						
		enemy_hurt = 0.9;
		enemy_almost_hurt = 0;
		
		
		//sfx
		if (!audio_is_playing(snd_stomp))
		{
			var sndu = audio_play_sound(snd_stomp,1000,false,global.sfx_volume)
			audio_sound_gain(sndu,0.25,0)
		}
		else if (audio_is_playing(snd_stomp))
		{
			audio_stop_sound(snd_stomp)
			var sndu = audio_play_sound(snd_stomp,1000,false,global.sfx_volume)
			audio_sound_gain(sndu,0.25,0)
		}
		
		if (!audio_is_playing(snd_xga_scream))
		{
			var sndu1 = audio_play_sound(snd_xga_scream,1000,false,global.sfx_volume)
			audio_sound_pitch(sndu1, 1+random_range(-0.1,0.1))
		}
		else if (audio_is_playing(snd_xga_scream))
		{
			audio_stop_sound(snd_xga_scream)
			var sndu1 = audio_play_sound(snd_xga_scream,1000,false,global.sfx_volume)
			audio_sound_pitch(sndu1, 1+random_range(-0.1,0.1))
		}
	}
	
	
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)
	
	global.darkeater_active = 1
	
	
	
	
	with(obj_darkeater_hitbox)
	{
		State_machine_switch_state(darkeater_hurt)	
		exit
	}
}



//bullets
if (instance_place(x,y,obj_bullet))
{
    bullet_hurtenemycode_xga(self)
	
	global.darkeater_active = 1
	
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
	
	global.darkeater_active = 1
	
	audio_stop_sound(snd_xga_amb1)
	audio_stop_sound(snd_xga_amb2)
	audio_stop_sound(snd_xga_amb3)
}










//dying
if (hp <= 0) && (deathanim <= 0) && (global.pierce_killswitch = 0)
{
	deathanim = 1;
	
	image_speed = 0;
	
	with(obj_darkeater_hitbox)
	{
		State_machine_switch_state(Freeze)	
		hspd = 0
		vspd = 0
	}
	
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}

	with(obj_player)
	{
		hspd_enemy = 0;
	}
}

if (deathanim > 0) && (global.pierce_killswitch = 0)
{
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	deathanim += 1/2;
	enemy_hurt = 1;
	
	if (deathanim >= 100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}
	
	global.boss_battle = 0;
	
	if (deathanim >= 170)
	{
		if (instance_exists(obj_darkeater_hitbox))
		{
			instance_destroy(obj_darkeater_hitbox)	
		}
		
		instance_destroy()	
		
		
		//open boss blockers
		if (instance_exists(obj_corelock_boss))
		{
			with(obj_corelock_boss)
			{
				global.bossblockers[BossblockerID] = 1;
			}
		}
		
		
		//corruption variable
		if (global.corrupted > 0)
		{
			global.corrupted = 0	
		}
	}
	

	
	exit
	
}