/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
upgradeID = 963
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
//text
Gamepad_variables()
Gamepad_getname()

tex = 0
tex2 = 0
text1 = " INVISIBILITY"
if (global.invisibility_available == 0)
{
	text2 = " ACTIVATES AFTER A SMALL DELAY. WHILE ACTIVE, MAKES YOU UNDETECTABLE BY ENEMIES AND OTHER OBJECTS AS LONG AS YOU DON'T SHOOT. SELECT WITH " + string(L2) + "/" + string(R2) + " TO CYCLE BETWEEN ABILITIES, ACTIVATING THE CURRENT ONE HIGHLIGHTED. YOU CAN REFILL ALL AMMO BY USING SAVE (S) ROOMS.";
}
else text2 = " INCREASES INVISIBILITY AMMO BY +10.";