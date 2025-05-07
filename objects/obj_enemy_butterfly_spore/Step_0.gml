/// @description Insert description here
// You can write your code in this editor
image_angle -= 3;

y += 0.09;

x += 0.2*sin(y);

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.nanoshield <= 0)
{
	instance_destroy()
}

if (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
{
	instance_destroy()
}