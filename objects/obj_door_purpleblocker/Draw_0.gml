/// @description Insert description here
// You can write your code in this editor
if (enemy_hurt > 0)
{
	if (doorleft)
	{
		sprite_index = spr_doorstopper_purple_left_hurt;
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_purple_left_hurt;
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_purple_right_hurt;
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_purple_right_hurt;
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_purple_left_hurt;
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_purple_right_hurt;
	}
	
	draw_self();
	enemy_hurt = 0;
}
else  if (enemy_hurt <= 0)
{
	if (doorleft)
	{
		sprite_index = spr_doorstopper_purple_left;
	}
	else if (doorleftalt)
	{
		sprite_index = spr_doorstopper_purple_left;
	}
	else if (doorright)
	{
		sprite_index = spr_doorstopper_purple_right;
	}
	else if (doorrightalt)
	{
		sprite_index = spr_doorstopper_purple_right;
	}
	else if (doorleftmore)
	{
		sprite_index = spr_doorstopper_purple_left;
	}
	else if (doorrightmore)
	{
		sprite_index = spr_doorstopper_purple_right;
	}
	draw_self();
}