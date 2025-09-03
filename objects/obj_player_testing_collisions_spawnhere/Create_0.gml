/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	instance_destroy(obj_player)
	instance_destroy(object_player2_0_sprites)
	instance_destroy(obj_camera)
	instance_create_depth(x,y,depth,obj_player_testing_collisions)
	instance_create_depth(x,y,depth,obj_camera_testing_collisions)
	
	obj_player_testing_collisions.x = x
	obj_player_testing_collisions.y = y
	
	//obj_player_testing_collisions.sprite_index = spr_player_jump
	//obj_player_testing_collisions.state = Falling_doublejump
	//global.jumpingdm = 1;
	//global.jumping = 1;
}

exit