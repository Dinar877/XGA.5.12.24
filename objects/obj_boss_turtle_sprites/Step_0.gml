/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	
	if (!instance_exists(obj_upgrade_burnbeam)) && (global.upgradecollected[952] <= 0)
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_burnbeam)
			with(inst1)
			{
				upgradeID = 952	
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
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
{
	exit;	
}

if (inactive = 1)
{
	exit
}

x = inst2.x;
y = inst2.y+20;

if (collision_circle(x,y,120,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning))
{
	with(object_player2_0_sprites)
	{
		image_speed = 0;	
	}
	warning = 1;
	inactive= 0
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark_warning);
	global.boss_warning = 1;
	State_machine_switch_state(turtle_bossintro_spin)
	spintimer = 0;
	
	if ((audio_is_playing(global.sector_music)) > 0)
		{
			audio_stop_sound(global.sector_music)
		}
	
	//close boss blockers
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
	}
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
	if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}





//boss invincibility effect
//boss_invincibility()

if (instance_place(x,y,obj_bullet)) && (hp > 0) && (warning = 1)
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
if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (hp > 0) && (warning = 1)
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








//dying
if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	image_speed = 0;
	
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
	
	with(obj_boss_turtle_hitbox)
	{
		deathanim = 1;	
		image_speed = 0;
		State_machine_switch_state(Freeze)
	}
	with(obj_boss_turtle_sprites)
	{
		deathanim = 1;
		State_machine_switch_state(Freeze)	
	}
	if (instance_exists(obj_boss_turtle_wind))
	{
		with(obj_boss_turtle_wind)
		{
			instance_destroy()
		}
	}
	with(obj_player)
	{
		hspd_enemy = 0;
	}
}

if (deathanim > 0)
{
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	deathanim += 1/2;
	enemy_hurt = 1;
	
	audio_stop_sound(snd_wind)
	audio_stop_sound(snd_wind_sfx)
	
	if (deathanim >=100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}
	global.boss_battle = 0;
	if (deathanim >= 170)
	{
		with(obj_boss_turtle_hitbox)
		{
			global.bossblockers[BossblockerID] = 1;
			instance_destroy()	
		}
		instance_destroy()	
		
		
		if (!instance_exists(obj_upgrade_burnbeam)) && (global.upgradecollected[952] <= 0)
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_burnbeam)
			with(inst1)
			{
				upgradeID = 952	
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

	}
	

	
	exit
	
}

if (hp > 0) && (warning = 1)
{
	State_machine_execute()	
}
