// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Positioning_Player_Loading_Anyroom(){
	
	var moveValue = 10
	var moveValueY = 20
	
	if (instance_exists(obj_door_normal_left))
	{
		obj_player.x = obj_door_normal_left.x-moveValue
		obj_player.y = obj_door_normal_left.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_leftAlt))
	{
		obj_player.x = obj_door_normal_leftAlt.x-moveValue
		obj_player.y = obj_door_normal_leftAlt.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_left_more))
	{
		obj_player.x = obj_door_normal_left_more.x-moveValue
		obj_player.y = obj_door_normal_left_more.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_left_3))
	{
		obj_player.x = obj_door_normal_left_3.x-moveValue
		obj_player.y = obj_door_normal_left_3.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_right))
	{
		obj_player.x = obj_door_normal_right.x+moveValue
		obj_player.y = obj_door_normal_right.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_rightAlt))
	{
		obj_player.x = obj_door_normal_rightAlt.x+moveValue
		obj_player.y = obj_door_normal_rightAlt.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_right_more))
	{
		obj_player.x = obj_door_normal_right_more.x+moveValue
		obj_player.y = obj_door_normal_right_more.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_normal_right_3))
	{
		obj_player.x = obj_door_normal_right_3.x+moveValue
		obj_player.y = obj_door_normal_right_3.y
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_left))
	{
		obj_player.x = obj_door_border_left.x-moveValue
		obj_player.y = obj_door_border_left.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_left_2))
	{
		obj_player.x = obj_door_border_left_2.x-moveValue
		obj_player.y = obj_door_border_left_2.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_left_more))
	{
		obj_player.x = obj_door_border_left_more.x-moveValue
		obj_player.y = obj_door_border_left_more.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_left_3))
	{
		obj_player.x = obj_door_border_left_3.x-moveValue
		obj_player.y = obj_door_border_left_3.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_right))
	{
		obj_player.x = obj_door_border_right.x+moveValue
		obj_player.y = obj_door_border_right.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_right_2))
	{
		obj_player.x = obj_door_border_right_2.x+moveValue
		obj_player.y = obj_door_border_right_2.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_right_more))
	{
		obj_player.x = obj_door_border_right_more.x+moveValue
		obj_player.y = obj_door_border_right_more.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}
	else if (instance_exists(obj_door_border_right_3))
	{
		obj_player.x = obj_door_border_right_3.x+moveValue
		obj_player.y = obj_door_border_right_3.y+moveValueY
		object_player2_0_sprites.x = obj_player.x
		object_player2_0_sprites.y = obj_player.y
		Teleport_Camera(obj_player.x,obj_player.y)
	}

}