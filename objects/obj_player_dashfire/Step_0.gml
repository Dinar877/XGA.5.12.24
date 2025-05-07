//makes sure gamepad inputs are recognized
script_execute(Gamepad_variables);

var test = 1;

if (global.hurt = 1)
{
image_speed = 0;
image_alpha = 0;
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
if ((global.jumpingdm = 1) or (global.hang = 1) or (global.climbing = 1)
or (global.dashbegin2 = 1) or (global.dash2 = 1) or (global.charging = 0))
{
sprite_index = -1;
image_speed = 0;
image_index = 0;
}