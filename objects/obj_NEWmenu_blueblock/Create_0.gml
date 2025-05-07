/// @description Insert description here
// You can write your code in this editor
death1 = 0;
death2 = 0;
FadeNow = 0;

killall = 0

orangeblock1 = -1
orangeblock2 = -1
orangeblock3 = -1
orangeblock4 = -1
orangeblock5 = -1


spawn = 0;
image_alpha = 0
alpha = 0;


time = 0;
time2 = 0;
spd = 0.5;
pauser = 0;
pauser_end = 0;
string_positionX = 0;
string_positionY = 0;
selected = 1;
death1 = 0;
death2 = 0;
message = "";
message_pos = 0;
message_original = "";
inst = -1;

message = "";
message2 = "";
message3 = "";
messageyes = "YES";
messageno = "NO";

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



text = " "
spd = 0.5;
font = font_regular1;
	
text_length = string_length(text)
font_size = font_get_size(font)
	
draw_set_font(font);
	
text_width = string_width_ext(text,font_size+(font_size/2),280);
text_height = string_height_ext(text,font_size+(font_size/2),30);

