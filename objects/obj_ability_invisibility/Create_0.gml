/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x+2,y+15,obj_ability_invisibility.depth-1,obj_number_100_invis)
instance_create_depth(x+6,y+15,obj_ability_invisibility.depth-1,obj_number_10_invis)
instance_create_depth(x+10,y+15,obj_ability_invisibility.depth-1,obj_number_1_invis)

//for the pickup effect
FadeNow = 0.0;
FadeNow2 = 0.0
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");

selected = 0;
selected_delay = 0
delay = 1;

abilitylimitID = -1
active = 0;

//gui co ords
drawX = 73;
drawY = 3;