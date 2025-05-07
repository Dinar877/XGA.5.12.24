/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0) or (global.corrupted > 0)
{	
	instance_destroy()
	global.doors_redblocker[redblockerID] = 1;	
	exit
}

if (instance_place(x,y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 1;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    with((instance_place(x,y,obj_bullet)))
    {
        if (burn = 0)
		{
			if (charge = 1)
			{
					with(other)
					{
						hp -= 15;
					}
			}
			else if (charge = 0)
			{
					with(other)
					{
						hp -= 1;
					}
			}
		}
		else if (burn = 1)
		{
			if (charge = 1)
			{
					with(other)
					{
						hp -= 27;
					}
			}
			else if (charge = 0)
			{
					with(other)
					{
						hp -= 3;
					}
			}
		}
		hspd = 0;
        vspd = 0;
		
		
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
		
		
        
        enemy_contact = 1;
    }
}

if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
	sword_hurtenemycode()
}


if (hp <= 0)
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
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


	instance_destroy();
}
