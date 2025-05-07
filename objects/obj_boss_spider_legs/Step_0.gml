/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	exit
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

if (inactive = 1)
or (!instance_exists(obj_boss_spider_hitbox))
or (!instance_exists(obj_boss_spider_eye))
{
	exit
}

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

x = obj_boss_spider_hitbox.x;
y = obj_boss_spider_hitbox.y+5;

//boss invincibility effect
if (obj_boss_spider_hitbox.warning = 1)
{
	invincible = obj_boss_spider_eye.invincible;
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

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}


//dying
if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	image_speed = 0;
	with(obj_boss_spider_eye)
	{
		deathanim = 1;	
		image_speed = 0;
		State_machine_switch_state(Freeze)
	}
	with(obj_boss_spider_hitbox)
	{
		deathanim = 1;
		State_machine_switch_state(Freeze)	
	}
	with(obj_chargingeffect_boss)
	{
		instance_destroy()
	}
}


//dead
if (deathanim > 0)
{
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	deathanim += 1/3;
	if (enemy_hurt = 0)
	{
	enemy_hurt = 1;
	}
	
	if (deathanim >=100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}

	if (deathanim >= 200)
	{
		if (!instance_exists(obj_upgrade_spreadbeam))
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_spreadbeam)
			with(inst1)
			{
				upgradeID = 951	
			}	
		}
		
		if (instance_exists(obj_boss_spider_eye))
		{
			with(obj_boss_spider_eye)
			{
				instance_destroy()	
			}
		}
		if (instance_exists(obj_boss_spider_hitbox))
		{
			with(obj_boss_spider_hitbox)
			{
				global.bossblockers[BossblockerID] = 1;
				instance_destroy()	
			}
		}

		
		instance_destroy()	
	}
	
}