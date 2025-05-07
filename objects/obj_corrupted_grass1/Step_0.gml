/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player))
{
	sprite_index = spr_corrupted_grass_contact;
}
else if (!place_meeting(x,y,obj_player))
{
	sprite_index = spr_corrupted_grass_idle;
}