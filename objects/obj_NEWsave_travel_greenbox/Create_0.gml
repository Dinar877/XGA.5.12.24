/// @description Insert description here
// You can write your code in this editor
left = 0
right = 0
confirm = 0
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


//var's
delay = 0
text = ""
active = 1

FadeNow = 0;
selected = 0;
selectedpause = 0
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
other_faderate = 0.01
other_fadelimit = 0.4


//menu shit
spawn = 0
killall = 0

tex = -1
tex_orange1 = -1
tex_orange2 = -1
tex_orange3 = -1
tex_orange4 = -1

menu_x = x
menu_y = y

menu_index_heading = 0
menu_index_offpath = 0
menu_index_item = 0
menu_last_selected = 0


Gamepad_variables()