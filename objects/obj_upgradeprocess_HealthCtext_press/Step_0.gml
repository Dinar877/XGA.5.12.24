/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (image_alpha < 1)
{
	image_alpha += 0.025;	
}

if (image_alpha >= 1) && (jump_pressed)
{
	with(obj_scrn_roomtransition)
	{
		fadeout1 = 1;	
	}
	if (instance_exists(obj_upgradeprocess_invisibility))
	{
		if (font_exists(global.font_gray1))
		{
			font_delete(global.font_gray1);
		}
	}
}