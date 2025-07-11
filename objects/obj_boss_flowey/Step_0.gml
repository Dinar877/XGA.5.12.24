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
	if (!instance_exists(obj_item_chargebeam)) && (global.upgradecollected[upgrades.chargeshot] = 0)
		{
			var inst1 = instance_create_layer(x,y-spriteheight,layer_get_id("Inst_level_0"),obj_item_chargebeam)
			with(inst1)
			{
				upgradeID = 950;	
			}	
		}
	
	instance_destroy();
	exit;
}

if (audio_exists(snd) > -1)
{
	if (audio_is_playing(snd)) && (audio_sound_get_track_position(snd) >= 1.3)
	{
		audio_stop_sound(snd)	
	}
}

if (global.boss_warning = 0) && (!instance_exists(obj_boss_flowey_vine)) && (deathanim < 1) && (sprite_index != spr_flowey_intro)
{
	image_speed = 1	
}


if (collision_line(x,y,x+200,y+45,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning)) && (global.bossblockers[BossblockerID] <= 0)
{
	with(object_player2_0_sprites)
	{
		image_speed = 0;	
	}
	
	if (instance_exists(obj_boss_flowey_eyevine_bossintro))
	{
		with(obj_boss_flowey_eyevine_bossintro)
		{
			sprite_index = spr_flowey_eyevine_bossintro2
			image_speed = 1
		}
	}
	
	image_speed = 1;
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
}

if (sprite_index == spr_flowey_intro) && (image_index >= image_number-1)
{
	sprite_index = spr_flowey_idle	
}


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (hp > 0)
{
	enemy_hurt_player_code(1)
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}



//boss invincibility effect
//boss_invincibility()



if (instance_place(x,y,obj_bullet))
{
	bullet_hurtenemycode_noeffect()	
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	image_speed = 0;
	with(obj_player)
	{
		hspd_enemy = 0;
	}
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
	instance_create(x,y,obj_sndmaker_endallmusic)
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
		if (!instance_exists(obj_item_chargebeam))
		{
			var inst1 = instance_create_layer(x,y-spriteheight,layer_get_id("Inst_level_0"),obj_item_chargebeam)
			with(inst1)
			{
				upgradeID = 950;	
			}	
		}
		with(obj_camera)
			{
				y = obj_mapchecker2.y+90	
				dontmove = 0
			}
		instance_destroy()	
		global.bossblockers[BossblockerID] = 1
	}
	
}

if (hp > 0) && (global.boss_warning = 0) && (warning > 0) && (image_speed > 0) && (!instance_exists(obj_scrnDark_warning))
{
	State_machine_execute()	
}