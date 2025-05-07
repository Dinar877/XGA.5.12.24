/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 0)// or (global.pause_exit = 1)
&& (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_exit = 0) && (FadeNow > 0)
{
	shader_set(shd_fade_whitegreen);
	shader_set_uniform_f(fade_color, 0.7, 1.0, 0.7, FadeNow);
	if ((!instance_exists(obj_ammo_bg1)) && (!instance_exists(obj_ammo_bg2)))
	{
		x = 93;
		y = 1;
	}
	else if ((!instance_exists(obj_ammo_bg1)) && (instance_exists(obj_ammo_bg2))) or ((instance_exists(obj_ammo_bg1)) && (!instance_exists(obj_ammo_bg2)))
	{
		x = 114;
		y = 1;
	}
	else if ((instance_exists(obj_ammo_bg1)) &&  (instance_exists(obj_ammo_bg2)))
	{
		x = 135;
		y = 1;
	}
	draw_self();
	shader_reset()
}
else if (global.pause_transition = 0)// or (global.pause_exit = 1)
&& (global.pause_map = 0)
&& (global.pause = 0)
&& (global.pause_exit = 0) && (FadeNow <= 0)
{
	if ((!instance_exists(obj_ammo_bg1)) && (!instance_exists(obj_ammo_bg2)))
	{
		x = 93;
		y = 1;
	}
	else if ((!instance_exists(obj_ammo_bg1)) && (instance_exists(obj_ammo_bg2))) or ((instance_exists(obj_ammo_bg1)) && (!instance_exists(obj_ammo_bg2)))
	{
		x = 114;
		y = 1;
	}
	else if ((instance_exists(obj_ammo_bg1)) &&  (instance_exists(obj_ammo_bg2)))
	{
		x = 135;
		y = 1;
	}
	draw_self();
}
