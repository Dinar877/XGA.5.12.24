/// @description Insert description here
// You can write your code in this editor
death1 = 0;
death2 = 0;
FadeNow = 0;

killall = 0

is_fullscrn = 0
is_1920x1080 = 0
is_1366x768 = 0
is_320x180 = 0

is_savefile = 0
is_options = 0
is_exit = 0

is_load_yes = 0
is_load_no = 0

is_casual = 0
is_recommended = 0
is_test = 0
is_test2 = 0

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
gamepad4_wait = 0
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


FadeNow = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
inst = 0;

snd = 0


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

FadeNow = 0

scr_gamepad_test()
Gamepad_variables()
