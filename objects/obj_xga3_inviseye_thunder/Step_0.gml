 /// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
{
	exit;	
}

x = obj_player.x
y = obj_player.y

enemy_hurt_player_code(4)

if (image_index >= image_number-1)
{
	instance_destroy()	
}