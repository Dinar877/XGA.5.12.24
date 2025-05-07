/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (instance_exists(obj_player))
{
	if (sprite_index = spr_camera_left) && (obj_player.x > self.x)
	{
		sprite_index = spr_camera_turn_l2r;	
		image_index = 0
	}
	else if (sprite_index = spr_camera_turn_l2r) && (image_index >= image_number-1)
	{
		sprite_index = spr_camera_right;	
	}

	if (sprite_index = spr_camera_right) && (obj_player.x < self.x)
	{
		sprite_index = spr_camera_turn_r2l;	
		image_index = 0
	}
	else if (sprite_index = spr_camera_turn_r2l) && (image_index >= image_number-1)
	{
		sprite_index = spr_camera_left;	
	}
}

if (instance_place(x,y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    bullet_hurtenemycode(self)
}



xmin = x;
xmax = xmin + (sprite_get_width(sprite_index)/2);
ymin = y;
ymax = ymin + (sprite_get_height(sprite_index)/2);

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		enemy_almost_hurt = 0;
	}
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()

	instance_destroy();
}