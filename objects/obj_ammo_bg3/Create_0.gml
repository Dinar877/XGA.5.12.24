/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x+2,y+15,obj_ammo_bg3.depth-1,obj_number_100_burn)
instance_create_depth(x+6,y+15,obj_ammo_bg3.depth-1,obj_number_10_burn)
instance_create_depth(x+10,y+15,obj_ammo_bg3.depth-1,obj_number_1_burn)

//for the pickup effect
FadeNow = 0.0;
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");