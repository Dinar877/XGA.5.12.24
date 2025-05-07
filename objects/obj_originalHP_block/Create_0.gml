/// @description Insert description here
// You can write your code in this editor
xpos = 0
ypos = 0
instadd = instance_number(obj_originalHP_block)
instno = (instance_number(obj_originalHP_block_start))+(instance_number(obj_originalHP_block))
n = instno
invincible = 0
flashwhite_limit = 0

if (instno mod 2 > 0) & (instno >= 6)
{
	xpos = (floor(instno/2)+1)*5
	sprite_index = spr_originalHP_block1
	depth = -200
}
else if (instno mod 2 <= 0) & (instno >= 6)
{	
	xpos = ((instno/2))*5-1
	ypos = sprite_height-2
	sprite_index = spr_originalHP_block2
	depth = -100
}

//shader
FadeNow = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
fadecolor_switch = 0
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for xga intro cutscene
image_alpha = 0