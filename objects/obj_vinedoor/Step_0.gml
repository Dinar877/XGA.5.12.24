/// @description Insert description here
// You can write your code in this editor

//for new RedblockerID's
if (redblockerID <= 0)
{
	RedblockerID()	
}

if (global.doors_redblocker[redblockerID] > 0) or (global.corrupted > 0) or ((room = rm_S3_16_28) && (global.bossblockers[bossblockers.flowey] = 1))
{	
	//destroy blockers
	if (instance_exists(obj_block2_blocker))
	{
		with(obj_block2_blocker)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()	
			}
		}
	}
	
	if (instance_exists(obj_block2_blocker1))
	{
		with(obj_block2_blocker1)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()	
			}
		}
	}
	
	global.doors_redblocker[redblockerID] = 1;
	
	instance_destroy()
	exit;
}

if FadeNow > 0 
{ 
FadeNow -= 0.0025; 
}
else if FadeNow <= 0
{
FadeNow = 0.3;
}

if (instance_place(id.x,id.y,obj_bullet))
{
	var bullety = instance_place(id.x,id.y,obj_bullet)
	
	if (bullety.charge <= 0)
	{
		bullet_hurtenemycode_noeffect()
	}
	else if (bullety.charge > 0)
	{
		enemy_hurt = 1
		bullet_hurtenemycode(self)
	}
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}


if (hp <= 0)
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);

	with(obj_player)
	{
		if (place_meeting(x,y+1,obj_block2_blocker))
		{
			global.jumpingdm = 0
			global.crouching = 0
			if (sprite_index = spr_player_crouch)
			{
				sprite_index = spr_player
				y -= 4;
			}
			State_machine_switch_state(Falling)	
		}
	}
	
	global.doors_redblocker[redblockerID] = 1;
	
	//destroy blockers
	if (instance_exists(obj_block2_blocker))
	{
		with(obj_block2_blocker)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()	
			}
		}
	}
	
	if (instance_exists(obj_block2_blocker1))
	{
		with(obj_block2_blocker1)
		{
			if (place_meeting(x,y,other))
			{
				instance_destroy()	
			}
		}
	}

	instance_destroy();
}
