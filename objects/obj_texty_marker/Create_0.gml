/// @description Insert description here
// You can write your code in this editor
alpha = 0;
time = 0;
time2 = 0;
spd = 0.5;
pauser = 0;

switch1 = 0
switch_inst = 0
inst_map_no = (instance_number(obj_maptile_tile_hint))
inst_hint_no = 0

if (inst_map_no > 0)
{
	with(obj_maptile_tile_hint)
	{
		if (global.sector_active == sectortile)
		{
			other.inst_hint_no++	
		}
	}
}

switch_spawnarrow_anyany = 0

//markerbox = indicates it should spawn a map tile
switch_MARKERBOX = 0

//markerbox1 indicates if it can ever spawn map tiles 
switch_MARKERBOX1 = 0


pauser_end = 0;


midpause = 0
pauser_end_stopper1 = 0;
string_positionX = 0;
string_positionY = 0;
spawnerID = -1;

markerX = 0;
markerY = 0;
markerID = -1;
inst = -1
sectortile = -1;

message = "";
message_pos = 0;
message_original = "";
inst = -1;

stringy2 = 0;
stringy = 0;
strn = 0;
tex = 0;
text_current = 0;
strn_length = 0;
text_length_current = 0;
strn_total = 0;
print = "";


font = font_regular1;
	
text_length = 0
font_size = 0
	
text_width = 0
text_height = 0

surface_font = -1;
surface2_font = -1;
surface3_font = -1;

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