// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
{
	exit;	
}

if (obj_player.state != Dashing2_begin)
&& (obj_player.state != Dashing2_turning)
&& (obj_player.state != Dashing2_use)
{
	instance_destroy();
	exit;
}

depth = object_player2_0_sprites.depth-1;

if (image_index < image_number-1)
{
	image_speed = 0.5;
}
if (round(image_index) >= image_number-1) && (started_dashsmoke = 0)
{
	sprite_index = -1;
	instance_destroy();
}

if (image_speed > 0.5) && (image_index <= 2) && (L = 1)
{
	x = obj_player.x+5;
	y = obj_player.y+18;
}

if (image_speed > 0.5) && (image_index <= 2) && (R = 1)
{
	x = obj_player.x-5;
	y = obj_player.y+18;
}

if (image_speed > 0.5) && (image_index <= 2) && (Select = 1)
{
	x = obj_player.x+5;
	y = obj_player.y+18;
}

if (image_speed > 0.5) && (image_index <= 2) && (R2 = 1)
{
	x = obj_player.x-5;
	y = obj_player.y+18;
}

