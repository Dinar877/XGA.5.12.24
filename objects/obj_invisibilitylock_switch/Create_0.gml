/// @description Insert description here
// You can write your code in this editor
redblockerID = 0
on = 0
off = 1

FadeNow = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

inst = instance_create_depth(id.x,id.y,id.depth-1,obj_invisibility_line)