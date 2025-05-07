/// @description Insert description here
// You can write your code in this editor
doorleft = (instance_place(x,y,obj_door_normal_left))
doorleftalt = (instance_place(x,y,obj_door_normal_leftAlt))
doorright = (instance_place(x,y,obj_door_normal_right))
doorrightalt = (instance_place(x,y,obj_door_normal_rightAlt))
doorrightmore = instance_place(x,y,obj_door_normal_right_more)
doorleftmore = instance_place(x,y,obj_door_normal_left_more)
activated = 0;
hp = 100;
enemy_hurt = 0;
image_alpha = 0;

if (doorleft)
{
	depth = doorleft.depth-1;
}
else if (doorleftalt)
{
	depth = doorleftalt.depth-1;
}
else if (doorright)
{
	depth = doorright.depth-1;
}
else if (doorrightalt)
{
	depth = doorrightalt.depth-1;
}
else if (doorleftmore)
{
	depth = doorleftmore.depth-1;
}
else if (doorrightmore)
{
	depth = doorrightmore.depth-1;
}

