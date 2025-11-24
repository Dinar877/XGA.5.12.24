/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

enemy_hurt_player_code(4);

//spawning
if (sprite_index = spr_xga3_vomiting_begin) && (round(image_index) == 5) && (spawned == false)
{
	spawned = true;
	instance_create_depth(x,y,obj_boss_xga3.depth-1,obj_xga3_vomit_pool);
	instance_create_depth(x,y+65,depth-1,obj_xga3_vomit_splash);
}

//goto active
if (sprite_index = spr_xga3_vomiting_begin) && (image_index >= image_number-1)
{
	sprite_index = spr_xga3_vomiting_active;
}

if (sprite_index = spr_xga3_vomiting_active)
{
	if (timer < 1)
	{
		timer += ((1/60)/6);
	}
	else if (timer >= 1)
	{
		timer = 1;
	}
}


//despawning
if (sprite_index = spr_xga3_vomiting_ending) && (round(image_index) == 3)
{
	obj_xga3_vomit_pool.sprite_index = spr_xga3_vomiting_pool_ending;
	obj_xga3_vomit_pool.ending = true;
	instance_destroy(obj_xga3_vomit_splash);
	
	with(obj_boss_xga3)
	{
		if (sprite_index = spr_xga3_vomit_part2_left)
		{
			sprite_index = spr_xga3_vomit_part3_left;	
		}
		else if (sprite_index = spr_xga3_vomit_part2_right)
		{
			sprite_index = spr_xga3_vomit_part3_right;	
		}
	}
}

//end completely
if (sprite_index = spr_xga3_vomiting_ending) && (image_index >= image_number-1)
{
	instance_destroy();
}