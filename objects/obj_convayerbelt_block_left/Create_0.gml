transition = 0;
am_ledge = 1;

if (place_meeting(x+1,y,obj_convayerbelt_block_left)) && (place_meeting(x-1,y,obj_convayerbelt_block_left))
{
	sprite_index = spr_convayerbelt_middle_goingleft
}
else if (!place_meeting(x+1,y,obj_convayerbelt_block_left)) && (place_meeting(x-1,y,obj_convayerbelt_block_left))
{
	sprite_index = spr_convayerbelt_endright_goingleft
}
else if (place_meeting(x+1,y,obj_convayerbelt_block_left)) && (!place_meeting(x-1,y,obj_convayerbelt_block_left))
{
	sprite_index = spr_convayerbelt_endleft_goingleft
}