/// @description Insert description here
// You can write your code in this editor
n = 1;

tileposx = 0;
tileposy = 0;
gotsprite = 0;
discovered = 0;
inst3 = 0;

sectortile = -1

//for the charge effect
timerfade = 0;
FadeNow2 = 0.0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_red, "fade_color");
NewColor = shader_get_uniform(shd_fade_red, "NewColor");

//for pause menu
global.xleft = 0;
xright= 0;
global.yup = 0
ydown = 0;

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

enter_pressed = 0;

gotsprite = 0;
discovered = 1;

script_execute(scr_gamepad_test)
script_execute(Gamepad_variables)