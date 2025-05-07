/// @description Insert description here
// You can write your code in this editor

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

script_execute(scr_gamepad_test);
script_execute(Gamepad_variables);

//320x180
if (!instance_exists(obj_textblock_320x180))
{
	var inst = instance_create_layer(x-20,y+11,layer_get_id("Inst_healthui"),obj_textblock_320x180);
	with(inst)
	{
		selected = 1;
		waiting = 0;
	}
}
/////640x360
if (!instance_exists(obj_textblock_640x360))
{
	var inst = instance_create_layer(x-20,y+29,layer_get_id("Inst_healthui"),obj_textblock_640x360);
	with(inst)
	{
		selected = 0;
		waiting = 0;
	}
}
//960x540
if (!instance_exists(obj_textblock_960x540))
{
	var inst = instance_create_layer(x-20,y+47,layer_get_id("Inst_healthui"),obj_textblock_960x540);
	with(inst)
	{
		selected = 0;
		waiting = 0;
	}
}
//1366x768
if (!instance_exists(obj_textblock_1366x768))
{
	var inst = instance_create_layer(x-20,y+64,layer_get_id("Inst_healthui"),obj_textblock_1366x768);
	with(inst)
	{
		selected = 0;
		waiting = 0;
	}
}

//1920x1080
if (!instance_exists(obj_textblock1920x1080))
{
	var inst = instance_create_layer(x-20,y+82,layer_get_id("Inst_healthui"),obj_textblock1920x1080);
	with(inst)
	{
		selected = 0;
		waiting = 0;
	}
}