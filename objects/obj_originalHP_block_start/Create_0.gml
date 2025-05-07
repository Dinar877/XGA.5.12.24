/// @description Insert description here
// You can write your code in this editor
xpos = 0
ypos = 0
instadd = 0
n = 0
i = 0

instno = (instance_number(obj_originalHP_block_start))+(instance_number(obj_originalHP_block))



//shader
FadeNow = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
invincible = 0
flashwhite_limit = 0


//for xga intro cutscene
image_alpha = 0