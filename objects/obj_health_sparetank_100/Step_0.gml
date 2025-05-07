/// @description Insert description here
// You can write your code in this editor
if (global.health1 > (xadd*100)) && (global.health_limit > (xadd*100))
{
	sprite_index = spr_healthNew_fulltank1;
}
else if (global.health1 <= (xadd*100)) && (global.health_limit > (xadd*100))
{
	sprite_index = spr_healthNew_emptytank1;
}