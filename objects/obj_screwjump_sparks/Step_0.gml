if (instance_exists(obj_player))
{	
	if (global.facingDir = -1) && (obj_player.enemy_slowdownswitch == 0) && (global.screwjump = 1) && ((obj_player.state = Falling_Dashing2_airdash) or (obj_player.state = Falling_Dashing2))
	{
	    x = obj_player.x;
	    y = obj_player.y;
	    image_alpha = 1;
	    image_speed = 1;
	    sprite_index = spr_screwjump_left2
	}
	if (global.facingDir = 1) && (obj_player.enemy_slowdownswitch == 0) && (global.screwjump = 1) && ((obj_player.state = Falling_Dashing2_airdash) or (obj_player.state = Falling_Dashing2))
	{
    
		x = obj_player.x;
	    y = obj_player.y;
	    image_alpha = 1;
	    image_speed = 1;
		sprite_index = spr_screwjump_right2
	}
	if (global.hang = 1) or (global.climbing = 1) or (global.jumpingdm = 0) or (obj_player.enemy_slowdownswitch > 0)
	{
	    image_alpha = 0;
	    image_speed = 0;
	    image_index = 0;
	}
	else if ((obj_player.state != Falling_Dashing2_airdash) && (obj_player.state != Falling_Dashing2))
	{
		image_alpha = 0;
	    image_speed = 0;
	    image_index = 0;
	}
}
