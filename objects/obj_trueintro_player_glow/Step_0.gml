/// @description Insert description here
// You can write your code in this editor
if (timer < 1)
{
	timer += (1/room_speed)/8	
}
else timer = 1

if (timer >= 1) && (sprite_index == spr_trueintro_player_glow)
{
	image_index = 0	
	sprite_index = spr_trueintro_player_getup_1
}

if (timer >= 1) && (sprite_index == spr_trueintro_player_getup_1) && (image_index >= image_number-1)
{
	sprite_index = spr_trueintro_player_getup_2_bg
	instance_create_depth(x,y,id.depth-5,obj_trueintro_player_playeranim)
	
	with(obj_trueintro_spraypipe)
	{
		sprite_index = spr_trueintro_spraypipe_end	
	}
}