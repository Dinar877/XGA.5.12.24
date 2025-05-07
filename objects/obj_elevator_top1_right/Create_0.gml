/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.15;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

instance_create_depth(x,bbox_top-6,id.depth-1,obj_elevator_top1_pressa)

inst_elevator = -1

//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;


AimDown = 0
AimtrueUp = 0
AimUp = 0




on = 0;
off = 0
noplacemeeting = 0

scr_gamepad_test()
Gamepad_variables()