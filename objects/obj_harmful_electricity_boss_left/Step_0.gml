/// @description Insert description here
// You can write your code in this editor
enemy_hurt_player_code(2)

x -= 4;

if (!place_meeting(x,y,obj_block))
{
	instance_destroy()
}
