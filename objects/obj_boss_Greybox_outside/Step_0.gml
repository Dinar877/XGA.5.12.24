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
	exit;
}

if (global.boss_warning = 0) && (deathanim < 1)
{
	image_speed = 1	
}

//set hp to whatever greybox inside's hp is
if (instance_exists(obj_boss_Greybox_inside))
{
	hp = obj_boss_Greybox_inside.hp;
}


//all attack move
if (ALLGO_timer < 1) && (warning = 1)
	{
		ALLGO_timer += (1/60)/12
	}
else if (ALLGO_timer >= 1) && (warning = 1)
	{
			ALLGO_timer = 0
			dontmove_Gr = 1
			dontmove_O = 1
			with(obj_boss_Greenbox)
				{
					if (!place_meeting(x,y,obj_block)) && (state != Gbox_shoot)
					{
						sprite_index = spr_Gbox_charge
						image_index = 0
						spintimer = 1
						State_machine_switch_state(Gbox_charge)
					}
				}
			with(obj_boss_Obox)
				{
					if (!place_meeting(x,y,obj_block)) && (state != Obox_fall) && (state != Obox_rise)
					{
						sprite_index = spr_Obox_rumble
						State_machine_switch_state(Obox_rumble)
					}
				}
	}

//all move together no attacks
if (warning = 1) && (dontmove_O = 0) && (dontmove_Gr = 0) && (ALLGO_timer < 1)
{
	x += 1
	with(obj_boss_Greenbox)
	{
		x += 1	
	}
	with(obj_boss_Obox)
	{
		x += 1	
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
boss_invincibility()




if (instance_place(id.x,id.y,obj_bullet))
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
}