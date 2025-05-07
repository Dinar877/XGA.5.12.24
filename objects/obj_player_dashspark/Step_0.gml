//makes sure gamepad inputs are recognized
var test = 1;

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

if (instance_exists(obj_player))
{
	x = obj_player.x
	y = obj_player.y
}

/*
if (global.charging = 1) && (global.charge_ready = 1)
&& (global.jumpingdm = 0) && (global.hang = 0) && (global.climbing = 0)
&& (global.dashbegin2 = 0) && (global.dash2 = 0)
{
	sprite_index = spr_chargeshot2;
	image_speed = 1;
	x = obj_player.x;
	y = obj_player.y;
}
*/

if (image_index >= image_number-1)
{
	instance_destroy()	
}