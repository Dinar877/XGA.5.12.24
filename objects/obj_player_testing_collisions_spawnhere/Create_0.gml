/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	obj_player.x = x
	obj_player.y = y
	
	obj_player.sprite_index = spr_player_jump
	obj_player.state = Falling_doublejump
	global.jumpingdm = 1;
	global.jumping = 1;
}

exit