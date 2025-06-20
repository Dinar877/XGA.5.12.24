 /// @description Insert description here
// You can write your code in this editor

//do not run code if player no longer exists
if (!instance_exists(obj_player))
{
	exit;
}

//follow player
x = obj_player.x + randX;
y = obj_player.y + randY;


if (round(image_index) >= image_number-1)
{
	instance_destroy();	
}