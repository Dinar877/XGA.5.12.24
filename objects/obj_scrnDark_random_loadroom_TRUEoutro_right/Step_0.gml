/// @description Insert description here
// You can write your code in this editor
image_alpha += 0.015;

if (image_alpha >= 1)
{
	instance_activate_all()
	room_goto(rm_sectortransitioning_right_generic)
}
