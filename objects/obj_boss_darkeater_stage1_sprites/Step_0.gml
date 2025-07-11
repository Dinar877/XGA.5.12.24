/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	if (!instance_exists(obj_upgrade_wallscaler)) && (global.upgradecollected[upgrades.wallscaler] = 0)
		{
			var inst1 = instance_create_layer(x,y-spriteheight,layer_get_id("Inst_level_0"),obj_upgrade_wallscaler)
			with(inst1)
			{
				upgradeID = 1;	
			}	
		}
	
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

inst = instance_place(x,y,obj_boss_darkeater_stage1_hitbox)

if (inst > 0)
{
	x = inst.x;
	y = inst.y+spriteheight-1;
}

if (collision_rectangle(x-140,y,x+140,y,obj_player,false,true)) && (warning = 0) && (!instance_exists(obj_scrnDark_warning))
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


if (instance_place(x,y,obj_bullet)) && (hp > 0) && (warning == 1)
{
    enemy_contact = 1;
	idleend = 1;
	if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    with(obj_bullet)
    {
        if (place_meeting(x,y,obj_boss_darkeater_stage1_sprites)) && (global.boss_warning = 0)
		{
			if (enemy_contact = 0)
			{
				if (burn = 0)
				{
					if (charge = 1)
					{
							with(instance_place(x,y,obj_boss_darkeater_stage1_sprites))
							{
								hp -= 5;
							}
					}
					else if (charge = 0)
					{
							with(instance_place(x,y,obj_boss_darkeater_stage1_sprites))
							{
								hp -= 1;
							}
					}
				}
				else if (burn = 1)
				{
					if (charge = 1)
					{
							with(instance_place(x,y,obj_boss_darkeater_stage1_sprites))
							{
								hp -= 7;
							}
					}
					else if (charge = 0)
					{
							with(instance_place(x,y,obj_boss_darkeater_stage1_sprites))
							{
								hp -= 2;
							}
					}
				}
			enemy_contact = 1;	
			}
			hspd = 0;
	        vspd = 0;
        
	        var ymin1 = bbox_top;
	        var ymax1 = bbox_bottom;
	        var xmin1 = bbox_left;
	        var xmax1 = bbox_right;
	        if (image_index = 0) && (sprite_index != -1)
	        {
	        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit);
	        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
	        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
	        }
		
		
			if (global.beam_burn_available = 0)
			{
				if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
		        sprite_index = spr_bullet_hit;
		        started1 = 1;
		        }
		        if (global.explosiveammo = 1) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
		        {
		        sprite_index = spr_explosion1;
		        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 0) && (started1 = 0)
		        {
		        sprite_index = spr_charge1_bullet_hit;
		        started1 = 1;
		        }
		        if (global.upgrade_charge = 1) && (global.charge_shot = 1) && (started1 = 0)
		        {
		        sprite_index = spr_charge2_bullet_hit;
		        started1 = 1;
		        }
				}
		
			if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0)
			{
			sprite_index = spr_explosion5;
	        started1 = 1;	
			}
			else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0)
			{
			sprite_index = spr_explosion6;
	        started1 = 1;	
			}	
		}
    }
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (warning == 1)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    sword_hurtenemycode()
}





//dying
if (hp <= 0) && (deathanim <= 0)
{
	deathanim = 1;
	image_speed = 0;
	with(inst)
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
	
	instance_create(random_range(self.bbox_left, self.bbox_right), random_range(self.bbox_top, self.bbox_bottom), obj_explosion_random);
	
	deathanim += 1/2;
	enemy_hurt = 1;
	
	if (deathanim >=100) && (!instance_exists(obj_boss_deathscreennuke))
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_boss_deathscreennuke)
	}
	global.boss_battle = 0;
	if (deathanim >= 140)
	{
		if (!instance_exists(obj_upgrade_wallscaler))
		{
			var inst1 = instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_upgrade_wallscaler)
			with(inst1)
			{
				upgradeID = 1;	
			}	
		}
		with(inst)
		{
			global.bossblockers[BossblockerID] = 1;
			instance_destroy()	
		}

		
		instance_destroy()	
	}
	
}

if (hp > 0) && (warning > 0)
{
	State_machine_execute()	
}