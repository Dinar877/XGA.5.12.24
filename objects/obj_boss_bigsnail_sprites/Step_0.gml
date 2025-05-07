/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	
	if (!instance_exists(obj_upgrade_sword_swing)) && (global.upgradecollected[969] <= 0)
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_sword_swing)
			with(inst1)
			{
				upgradeID = 969	
			}	
		}
	
	exit;
}
else inst = instance_place(x,y,obj_boss_bigsnail_hitbox);

inst = instance_place(x,y,obj_boss_bigsnail_hitbox)

if (inst > 0)
{
	x = inst.x;
	y = inst.y+spriteheight;
}
else exit


if (collision_circle(x,y,130,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning)) && (global.bossblockers[BossblockerID] <= 0)
{
	with(object_player2_0_sprites)
	{
		image_speed = 0;	
	}
	
	warning = 1;
	
	if ((audio_is_playing(global.sector_music)) > 0)
		{
		audio_stop_sound(global.sector_music)
		}
	
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_warning);
	global.boss_warning = 1;
	with(obj_camera)
	{
		dontmove = 1	
	}
	
	//corelock boss door shut
	if (instance_exists(obj_corelock_boss))
	{
		with(obj_corelock_boss)
		{
			switch1 = 1	
		}
	}
}


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (hp > 0)
{
	enemy_hurt_player_code(2)
}


if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= 100;
	if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		
		//sfx
		if (audio_is_playing(snd_rockimpact1))
		{
			audio_stop_sound(snd_rockimpact1)
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
		else if (!audio_is_playing(snd_rockimpact1))
		{
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
	}
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (inst != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}


//boss invincibility effect
boss_invincibility()




//boss hurt code
if (instance_place(x,y,obj_bullet)) && (hp > 0) && (enemy_hurt = 0) && (warning = 1) && (flashwhite_limit <= 0)
{
	if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		
		//sfx
		if (audio_is_playing(snd_rockimpact1))
		{
			audio_stop_sound(snd_rockimpact1)
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
		else if (!audio_is_playing(snd_rockimpact1))
		{
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
	}
	
    stay = 1;
    enemy_almost_hurt = 0;
	bullet_hurtenemycode(self)
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (enemy_hurt = 0) && (warning = 1) && (flashwhite_limit <= 0)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
		
		//sfx
		if (audio_is_playing(snd_rockimpact1))
		{
			audio_stop_sound(snd_rockimpact1)
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
		else if (!audio_is_playing(snd_rockimpact1))
		{
			audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		}
	}
	
    stay = 1;
    enemy_almost_hurt = 0;
	
    sword_hurtenemycode()
}








if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	image_speed = 0;
	with(obj_boss_bigsnail_hitbox)
	{
		deathanim = 1;	
		image_speed = 0;
		State_machine_switch_state(Freeze)
	} 
	with(obj_player)
	{
		hspd_enemy = 0;
	}
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
}

if (deathanim > 0)
{
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random_big);
	
	deathanim += 1/2;
	enemy_hurt = 1;
	
	if (deathanim >=100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}
	
	global.boss_battle = 0;
	
	if (deathanim >= 140)
	{
		with(obj_boss_bigsnail_hitbox)
		{
			global.bossblockers[BossblockerID] = 1
			instance_destroy()	
		}
		
		global.bossblockers[BossblockerID] = 1

		//sword swing
		if (!instance_exists(obj_upgrade_sword_swing)) && (global.upgradecollected[969] <= 0)
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_sword_swing)
			with(inst1)
			{
				upgradeID = 969	
			}	
		}
		
		//open boss blockers
		if (instance_exists(obj_corelock_boss))
		{
			with(obj_corelock_boss)
			{
				global.bossblockers[BossblockerID] = 1;
			}
		}
		
		
		instance_destroy()	
		exit
		
	}
	
}

if (hp > 0) && (warning > 0) && (image_speed > 0) && (!instance_exists(obj_scrnDark_warning))
{
	State_machine_execute()	
}