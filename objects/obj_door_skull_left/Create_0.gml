/// @description Insert description here
// You can write your code in this editor
doorleft = (instance_place(x,y,obj_door_normal_left));
doorleftalt = (instance_place(x,y,obj_door_normal_leftAlt));
doorright = (instance_place(x,y,obj_door_normal_right));
doorrightalt = (instance_place(x,y,obj_door_normal_rightAlt));
doorrightmore = instance_place(x,y,obj_door_normal_right_more)
doorleftmore = instance_place(x,y,obj_door_normal_left_more)
activated = 0;
hp = 7;
enemy_hurt = 0;
image_alpha = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

