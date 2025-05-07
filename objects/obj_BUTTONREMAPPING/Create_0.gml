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


//left
if (!instance_exists(obj_textblock_left))
{
	var inst = instance_create_layer(x,y+11,layer_get_id("Inst_healthui"),obj_textblock_left);
	with(inst)
	{
		selected = 1;
		waiting = 0;
	}
}

//right
if (!instance_exists(obj_textblock_right))
{
	var inst2 = instance_create_layer(x,y+21,layer_get_id("Inst_healthui"),obj_textblock_right);
	with(inst2)
	{
		selected = 0;
		waiting = 0;
	}
}
//up
if (!instance_exists(obj_textblock_up))
{
	var inst3 = instance_create_layer(x,y+31,layer_get_id("Inst_healthui"),obj_textblock_up);
	with(inst3)
	{
		selected = 0;
		waiting = 0;
	}
}
//down
if (!instance_exists(obj_textblock_down))
{
	var inst4 = instance_create_layer(x,y+41,layer_get_id("Inst_healthui"),obj_textblock_down);
	with(inst4)
	{
		selected = 0;
		waiting = 0;
	}
}

//jump
if (!instance_exists(obj_textblock_space))
{
	var inst5 = instance_create_layer(x,y+51,layer_get_id("Inst_healthui"),obj_textblock_space);
	with(inst5)
	{
		selected = 0;
		waiting = 0;
	}
}
//shoot
if (!instance_exists(obj_textblock_tab))
{
	var inst6 = instance_create_layer(x,y+61,layer_get_id("Inst_healthui"),obj_textblock_tab);
	with(inst6)
	{
		selected = 0;
		waiting = 0;
	}
}
//ability
if (!instance_exists(obj_textblock_ability))
{
	var inst6 = instance_create_layer(x,y+71,layer_get_id("Inst_healthui"),obj_textblock_ability);
	with(inst6)
	{
		selected = 0;
		waiting = 0;
	}
}
//dash
if (!instance_exists(obj_textblock_G))
{
	var inst7 = instance_create_layer(x,y+81,layer_get_id("Inst_healthui"),obj_textblock_G);
	with(inst7)
	{
		selected = 0;
		waiting = 0;
	}
}
//Select
if (!instance_exists(obj_textblock_L2))
{
	var inst8 = instance_create_layer(x,y+91,layer_get_id("Inst_healthui"),obj_textblock_L2);
	with(inst8)
	{
		selected = 0;
		waiting = 0;
	}
}

//L2
if (!instance_exists(obj_textblock_L1))
{
	var inst8 = instance_create_layer(x,y+101,layer_get_id("Inst_healthui"),obj_textblock_L1);
	with(inst8)
	{
		selected = 0;
		waiting = 0;
	}
}

//R2
if (!instance_exists(obj_textblock_R1))
{
	var inst8 = instance_create_layer(x,y+111,layer_get_id("Inst_healthui"),obj_textblock_R1);
	with(inst8)
	{
		selected = 0;
		waiting = 0;
	}
}

//ENTER
if (!instance_exists(obj_textblock_ENTER))
{
	var inst8 = instance_create_layer(x,y+121,layer_get_id("Inst_healthui"),obj_textblock_ENTER);
	with(inst8)
	{
		selected = 0;
		waiting = 0;
	}
}

//RESET
if (!instance_exists(obj_textblock_RESET))
{
	var inst8 = instance_create_layer(x,y+131,layer_get_id("Inst_healthui"),obj_textblock_RESET);
	with(inst8)
	{
		selected = 0;
		waiting = 0;
	}
}