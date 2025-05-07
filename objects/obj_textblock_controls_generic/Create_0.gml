/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
selected = 0;
new_input = 0;
new_input_pressed = 0;
new_input_name = 0;
new_input_description = 0;
waiting = 0;
waiting2 = 0;
waiting3 = 0
delay = 0;
y1 = y
ynew = 0
on = 0;

new_keymap = 0
old_keymap = 0

gp_input = 0
gp_input_old = 0
gp_input_temp = 0

//screen sizes
resolutions = 0
r_320x180 = 0
r_640x360 = 0
r_960x540 = 0
r_1366x768 = 0
r_1920x1080 = 0
r_fullscrn = 0

//upgrades
text = "";
text_input = "";
charge = 0
spread = 0
burn = 0
reflect = 0
shield = 0
suit_dash = 0

//CONTROLS
do_space = 0
do_G = 0
do_ability = 0
do_tab = 0

do_L1 = 0
do_L2 = 0
do_R1 = 0
do_R2 = 0

do_select = 0
do_start = 0

lead2goback = 0;
do_reset = 0
do_exit = 0

//gamepad variable stuff
Gamepad_init_variables()

FadeNow = 0.0;
fade_color = shader_get_uniform(shd_fade_whitegreen, "fade_color");
NewColor = shader_get_uniform(shd_fade_whitegreen, "NewColor");

Gamepad_variables()


//reset names based on if xbox or sony controller
if (xbox_or_ps = 1)
{
	if (gp_input_old = gp_face1)
			{
				new_input_name = " A"
			}
	else if (gp_input_old = gp_face3)
			{
				new_input_name = " X"
			}
	else if (gp_input_old = gp_face2)
			{
				new_input_name = " B"
			}
	else if (gp_input_old = gp_face4)
			{
				new_input_name = " Y"	
			}
	else if (gp_input_old = gp_select)
			{
				new_input_name = " SELECT"	
			}
	else if (gp_input_old = gp_start)
			{
				new_input_name = " START"	
			}
	else if (gp_input_old = gp_shoulderl)
			{
				new_input_name = " L1"	
			}
	else if (gp_input_old = gp_shoulderlb)
			{
				new_input_name = " L2"	
			}
	else if (gp_input_old = gp_shoulderr)
			{
				new_input_name = " R1"	
			}
	else if (gp_input_old = gp_shoulderrb)
			{
				new_input_name = " R2"	
			}	
}
else if (xbox_or_ps = -1)
{
	if (gp_input_old = gp_face1)
			{
				new_input_name = " X"
			}
	else if (gp_input_old = gp_face3)
			{
				new_input_name = " SQUARE"
			}
	else if (gp_input_old = gp_face2)
			{
				new_input_name = " CIRCLE"
			}
	else if (gp_input_old = gp_face4)
			{
				new_input_name = " TRIANGLE"	
			}
	else if (gp_input_old = gp_select)
			{
				new_input_name = " SELECT"	
			}
	else if (gp_input_old = gp_start)
			{
				new_input_name = " START"	
			}
	else if (gp_input_old = gp_shoulderl)
			{
				new_input_name = " L1"	
			}
	else if (gp_input_old = gp_shoulderlb)
			{
				new_input_name = " L2"	
			}
	else if (gp_input_old = gp_shoulderr)
			{
				new_input_name = " R1"	
			}
	else if (gp_input_old = gp_shoulderrb)
			{
				new_input_name = " R2"	
			}	
}