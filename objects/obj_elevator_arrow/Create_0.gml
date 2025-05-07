/// @description Insert description here
// You can write your code in this editor
n = 0;
delay = 0;
goy = 0;
goyother = 0;
goyid = -1;


argue1 = 0
argue2 = obj_elevator_exit

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
if (instance_exists(obj_elevator_sectortutorial))
{
	argue1 = obj_elevator_sectortutorial
}
if (instance_exists(obj_elevator_sector4))
{
	argue1 = obj_elevator_sector4
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
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;
L2 = 0;
R2 = 0;
enter_pressed = 0;

scr_gamepad_test()
Gamepad_variables()