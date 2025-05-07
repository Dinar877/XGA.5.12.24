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
	
	if (!instance_exists(obj_upgrade_shockwave)) && (global.upgradecollected[965] <= 0)
		{
			var inst1 = instance_create_layer(606,265,layer_get_id("Inst_level_0"),obj_upgrade_shockwave)
			with(inst1)
			{
				upgradeID = 965	
			}	
		}
	global.doors_redblocker[50] = 1
	
	exit;
}

if (global.boss_warning = 0) && (deathanim < 1)
{
	image_speed = 1	
}

if (instance_exists(obj_boss_Greybox_outside))
{
	x = obj_boss_Greybox_outside.x
	y = obj_boss_Greybox_outside.y
}

if (collision_circle(x,y,130,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning))
{
	with(object_player2_0_sprites)
	{
		image_speed = 0;	
	}
	image_speed = 0;
	warning = 1;
	instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_healthui2"),obj_scrnDark_warning);
	global.boss_warning = 1;
	
	if ((audio_is_playing(global.sector_music)) > 0)
		{
		audio_stop_sound(global.sector_music)
		}
}




//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (hp > 0)
{
	enemy_hurt_player_code(1)
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
}


if (inst != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

//boss invincibility effect
//boss_invincibility()




if (instance_place(id.x,id.y,obj_bullet)) && (warning = 1)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
	
	bullet_hurtenemycode(self)
	
	with(obj_boss_Obox)
	{
		enemy_hurt = 0.9;
		hp -= 1
	}
	with(obj_boss_Greenbox)
	{
		enemy_hurt = 0.9;
		hp -= 1
	}
	with(obj_boss_Greybox_outside)
	{
		enemy_hurt = 0.9;
		hp -= 1
	}
}




//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (warning = 1)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9	
		sword_spriteindex = 0
	}
	stay = 1
	
	sword_hurtenemycode()
	
	with(obj_boss_Obox)
	{
		enemy_hurt = 0.9;
		hp -= 3
	}
	with(obj_boss_Greenbox)
	{
		enemy_hurt = 0.9;
		hp -= 3
	}
	with(obj_boss_Greybox_outside)
	{
		enemy_hurt = 0.9;
		hp -= 3
	}
}



//dying
if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	enemy_hurt = 0.9
	image_speed = 0;
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
	instance_create(x,y,obj_sndmaker_endallmusic)
	
	with(obj_boss_Obox)
	{
		hp = 0
		enemy_hurt = 0.9
	}
	with(obj_boss_Greenbox)
	{
		hp = 0
		enemy_hurt = 0.9
		sprite_index = spr_Gbox_idle
		if (instance_exists(obj_boss_box_thunder))
		{
			instance_destroy(obj_boss_box_thunder)
		}
		if (instance_exists(obj_boss_box_thunder_ground))
		{
			instance_destroy(obj_boss_box_thunder_ground)
		}
		audio_stop_sound(snd_electricity)
	}
	with(obj_boss_Greybox_outside)
	{
		hp = 0
		enemy_hurt = 0.9
	}
}

//dying
if (deathanim > 0)
{
	//delete thunder
	if (instance_exists(obj_boss_box_thunder))
		{
			instance_destroy(obj_boss_box_thunder)
		}
	if (instance_exists(obj_boss_box_thunder_ground))
		{
			instance_destroy(obj_boss_box_thunder_ground)
		}
	audio_stop_sound(snd_electricity)
	
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random_big);
	with(obj_boss_Obox)
	{
		instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random_big);	
	}
	with(obj_boss_Greenbox)
	{
		instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random_big);	
	}
	
	deathanim += 1/2;
	
	if (deathanim >=100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}
	if (deathanim >= 140)
	{
		
		if (!instance_exists(obj_upgrade_shockwave))
		{
			var inst1 = instance_create_layer(606,265,layer_get_id("Inst_level_0"),obj_upgrade_shockwave)
			with(inst1)
			{
				upgradeID = 965	
			}	
		}
		with(obj_camera)
			{
				y = obj_mapchecker2.y+90	
				dontmove = 0
			}
		instance_destroy()	
		global.bossblockers[BossblockerID] = 1
		global.doors_redblocker[50] = 1
		global.boss_battle = 0;
		
		audio_stop_sound(snd_electricity)
		
		//destroy spikewall and blockers
		with(obj_boss_box_spikewall)
		{
			instance_create(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), obj_explosion_random_big);
			instance_create(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), obj_explosion_random_big);
			instance_create(random_range(bbox_left,bbox_right), random_range(bbox_top,bbox_bottom), obj_explosion_random_big);
			
			instance_destroy()
		}
		if (instance_exists(obj_block2_blocker))
		{
			with(obj_block2_blocker)
			{
				instance_destroy()	
			}
		}
		if (instance_exists(obj_block2_blocker1))
		{
			with(obj_block2_blocker1)
			{
				instance_destroy()
			}
		}
	}
	
}