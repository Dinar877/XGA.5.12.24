/// @description Insert description here
// You can write your code in this editor
direction1 = sign(random_range(1,-1))
direction2 = -1
adder1 = 0;
adder2 = 0;
hit = 0;

hit2 = 0;
flashwhite = 0;
flashwhitetimer = 0;

hittimer = 0;

startx = round(random_range(2,3));
starty = round(random_range(3,4));

doorpiece_surface = -1
door_type = 0

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;