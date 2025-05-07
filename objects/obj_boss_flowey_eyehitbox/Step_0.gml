/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= 100;
	if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	with(obj_boss_flowey)
		{
			enemy_hurt = 0.9
			hp -= 100
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
//boss_invincibility()


if (instance_place(id.x,id.y,obj_bullet)) && (warning > 0)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		stay = 1;
	    enemy_almost_hurt = 0;
	    bullet_hurtenemycode(self)
	}
	
	with(obj_boss_flowey)
	{
		if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9
			hp -= 4
		}
	}
	with(obj_boss_flowey_eyevine)
	{
		if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9
		}
	}
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox)) && (warning = 1)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9	
		sword_spriteindex = 0
		stay = 1
		sword_hurtenemycode()
	}
	
	with(obj_boss_flowey)
	{
		if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9
			hp -= 5
		}
	}
	with(obj_boss_flowey_eyevine)
	{
		if (enemy_hurt = 0)
		{
			enemy_hurt = 0.9
		}
	}
}


