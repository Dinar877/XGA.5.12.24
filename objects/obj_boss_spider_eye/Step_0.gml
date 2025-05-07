/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	
	//spread beam
		if (!instance_exists(obj_upgrade_spreadbeam)) && (global.upgradecollected[951] = 0)
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_spreadbeam)
			with(inst1)
			{
				upgradeID = 951	
			}	
		}
	
	exit;
}


if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
{
	exit;	
}

if (inactive = 1) or (!instance_exists(obj_boss_spider_hitbox))
{
	exit	
}

if (idleY > 7)
{
	idleswitch1 = 0;
	idleswitch2 = 1;
}
else if (idleY < -7)
{
	idleswitch1 = 1;
	idleswitch2 = 0;
}

if (idleswitch1)
{
	idleY += 0.05;	
}
else if (idleswitch2)
{
	idleY -= 0.05;	
}

x = obj_boss_spider_legs.x;
y = obj_boss_spider_legs.y-50+idleY;

if (place_meeting(x,y,obj_player)) && (((global.jumpingdm = 1) && (global.screwjump = 1)) or (global.dashuse = 1))
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


if (instance_exists(obj_boss_spider_hitbox))
{
	//bullets
	if (instance_place(x,y,obj_bullet)) && (obj_boss_spider_hitbox.warning = 1)
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
	if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (obj_boss_spider_hitbox.warning = 1)
	{
	    if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9;
			sword_spriteindex = 0;
		}
	    stay = 1;
	    enemy_almost_hurt = 0;
	
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
	
	    sword_hurtenemycode()
	}
}







//dying
if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	enemy_hurt = 1;
	image_speed = 0;
	with(obj_boss_spider_legs)
	{
		image_speed = 0;
		enemy_hurt = 1;
		hp = 0
	}
	
	if (instance_exists(obj_chargingeffect_boss))
	{
		with(obj_chargingeffect_boss)
		{
			instance_destroy()
		}
	}
	with(obj_boss_spider_hitbox)
	{
		deathanim = 1;
		hp = 0
		State_machine_switch_state(Freeze)	
	}
}
else if (hp > 0) && (obj_boss_spider_hitbox.warning == 1) && (!instance_exists(obj_scrnDark_warning))
{
	State_machine_execute();
}

if (deathanim > 0)
{
	deathanim2 += 1/3;
	image_angle += deathanim2;
	y += deathanim2/3;
	with(obj_boss_spider_legs)
	{
		image_speed = 0;
		enemy_hurt = 1;
		deathanim = 1;
	}
	
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
}

if (deathanim2 > 0)
{
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	deathanim2 += 1/3;
	if (enemy_hurt = 0)
	{
		enemy_hurt = 1;
	}
	
	if (deathanim2 >= 100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
		audio_stop_sound(global.sector_music)
		global.sector_music = ost_sector4_remastered
	}

	if (deathanim2 >= 200)
	{
		if (instance_exists(obj_boss_spider_legs))
		{
			with(obj_boss_spider_legs)
			{
				enemy_hurt = 1;
				instance_destroy()	
			}
		}
		
		//spread beam
		if (!instance_exists(obj_upgrade_spreadbeam))
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_spreadbeam)
			with(inst1)
			{
				upgradeID = 951	
			}	
		}
		
		with(obj_boss_spider_hitbox)
		{
			global.bossblockers[BossblockerID] = 1;
			instance_destroy()
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
	}
	

}	