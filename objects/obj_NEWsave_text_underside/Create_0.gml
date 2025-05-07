/// @description Insert description here
// You can write your code in this editor

image_alpha = 0

//gamepad variable stuff
gamepad0_wait = 0
gamepad4_wait = 0
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
Select = 0
R1 = 0
L1 = 0
L2 = 0
R2 = 0
enter_pressed = 0


active = 0;
sector_active = 0
room_found = 0
go = 0
back = 0
found = 0
inst = 0
inst_index = 0

if (instance_exists(obj_maptile_tile))
{
	inst_tile_num = (instance_number(obj_maptile_tile))
	inst_id_num[inst_tile_num] = false;
	inst_roomid_num[inst_tile_num] = false
}
go_left = 0
go_right = 0


text = "";
text1 = "";


Gamepad_variables()
Gamepad_getname()

textback = "";

//actual text
text = "CHANGE SECTORS: " + string(L2) + "/" + string(R2);
text1 = "CURRENT SECTOR: " + string(global.sector_active);
textback = "GO BACK: " + string(shoot_pressed);