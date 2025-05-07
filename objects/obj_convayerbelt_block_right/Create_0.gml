transition = 0;
am_ledge = 1;

if (place_meeting(x+1,y,obj_convayerbelt_block_right)) && (place_meeting(x-1,y,obj_convayerbelt_block_right))
{
	sprite_index = spr_convayerbelt_middle_goingright
}
else if (!place_meeting(x+1,y,obj_convayerbelt_block_right)) && (place_meeting(x-1,y,obj_convayerbelt_block_right))
{
	sprite_index = spr_convayerbelt_endright_goingright
}
else if (place_meeting(x+1,y,obj_convayerbelt_block_right)) && (!place_meeting(x-1,y,obj_convayerbelt_block_right))
{
	sprite_index = spr_convayerbelt_endleft_goingright
}

