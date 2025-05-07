/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
upgradeID = 801
text = ""



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

L1 = 0
R1 = 0
L2 = 0
R2 = 0

enter_pressed = 0

//getting the right control names
new_input_name = ""
gp_input_old = 0
Gamepad_variables()
Gamepad_getname()

//for text
tex = 0
tex2 = 0

text1 = " S.INVISIBILITY";
text2 = " SHOOTING NO LONGER TURNS OFF INVISIBILITY USAGE.";