/// @description Insert description here
// You can write your code in this editor
FadeNow = 0.5;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
upgradeID = -1
text = ""

//upgrade ID for collectibles- finds any == 0 value for global.upgradecollected, and automatically makes this object's upgradeID that value. Also records which room item is in, so we don't respawn item if it was already collected.
upgradeID = 0;

//upgradeID
Item_upgradeID()

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


if (global.nuclearblast_state = 1)
{
	sprite_index = spr_super_item_nuclearblast_extension	
}

//text
tex = 0
tex2 = 0
text1 = " NUCLEAR BLAST EXTENSION"
text2 = 0;
if (global.nuclearblast_available == 0)
{
	text2 = " ACTIVATES AFTER A SMALL DELAY. WHEN ACTIVE, CAUSES MASSIVE EXPLOSIONS IN YOUR CURRENT LOCATION THAT DAMAGE ALL ENEMIES.  SELECT WITH " + string(L2) + "/" + string(R2) + " TO CYCLE BETWEEN ABILITIES, ACTIVATING THE CURRENT ONE HIGHLIGHTED. YOU CAN REFILL ALL AMMO BY USING SAVE (S) ROOMS.";
}
else text2 = " INCREASES NUCLEARBLAST AMMO BY +1.";

