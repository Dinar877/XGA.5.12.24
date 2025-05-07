/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x+2,y+15,id.depth-1,obj_number_100_nanoshield)
instance_create_depth(x+6,y+15,id.depth-1,obj_number_10_nanoshield)
instance_create_depth(x+10,y+15,id.depth-1,obj_number_1_nanoshield)

//for the pickup effect
FadeNow = 0.0;
FadeNow2 = 0.0
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");
selected = 0;
delay = 1;


selected_delay = 0
fadesprites = 1/room_speed

nanoshield_hp = 2
abilitylimitID = -1
active = 0;

//gui co ords
drawX = 73;
drawY = 3;