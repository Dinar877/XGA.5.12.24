/// @description Insert description here
// You can write your code in this editor
if (global.doors_redblocker[redblockerID] > 0)
{	
	instance_destroy()
}

if (instance_place(x,y,obj_supernuclearblast_randomexplosion)) && (enemy_hurt <= 0)
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 1;
	}
	hp -= 15;
    stay = 1;
    enemy_almost_hurt = 0;
	
	if (hp < 70) && (hp >= 30) && (sprite_index != spr_super_nuclearblast_crystal_1)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		
		sprite_index = spr_super_nuclearblast_crystal_1
	}
	else if (hp < 30) && (sprite_index != spr_super_nuclearblast_crystal_2)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
		
		sprite_index = spr_super_nuclearblast_crystal_2
	}
}

if (hp <= 0)
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_supernuclearblast_randomexplosion);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_supernuclearblast_randomexplosion);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_super_breakable_crystal_piece);
	instance_create(x, y, obj_super_breakable_crystal_piece);
	instance_create(x, y, obj_super_breakable_crystal_piece);
	instance_create(x, y, obj_super_breakable_crystal_piece);

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
