/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
selected = 0;
new_input = 0;
new_input_pressed = 0;
new_input_name = 0;
waiting = 0;
delay = 0;
y1 = y
on = 0;

argue1 = 0

if (instance_exists(obj_elevator_sector1))
{
	argue1 = obj_elevator_sector1
}
else if (instance_exists(obj_elevator_sector2))
{
	argue1 = obj_elevator_sector2
}
else if (instance_exists(obj_elevator_sector3))
{
	argue1 = obj_elevator_sector3
}
else if (instance_exists(obj_elevator_sector4))
{
	argue1 = obj_elevator_sector4
}
else if (instance_exists(obj_elevator_sectortutorial))
{
	argue1 = obj_elevator_sectortutorial
}

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
jump_pressed = 0;
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

FadeNow = 0.0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");