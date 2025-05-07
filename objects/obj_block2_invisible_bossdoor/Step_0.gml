/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) && (transition <= 0) && (!instance_exists(obj_door_bossblocker))
{
	transition = 1;
}