/// @description Insert description here
// You can write your code in this editor
if (global.nuclearblast_available <= 0)
or (global.upgrade_process_data = 1)
{
	exit;	
}

if (global.pause_map = 0)
&& (global.pause = 0)
&& (FadeNow > 0)
&& (global.pause_player = 0)
&& (global.nuclearblast_available > 0)
{
	shader_set(shd_fade_whitegreen);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow);
	x = drawX+(abilitylimitID*17)-17;
	y = drawY;
	draw_self();
	shader_reset()
}
else if (global.pause_map = 0)
&& (global.pause = 0)
&& (FadeNow2 > 0)
&& (global.pause_player = 0)
{
	shader_set(shd_fade_whitegreen);
	shader_set_uniform_f(fade_color, 1.0, 1.0, 1.0, FadeNow2);
	draw_self();
	x = drawX+(abilitylimitID*17)-17;
	y = drawY;
	shader_reset();
}
else if (global.pause_map = 0)
&& (global.pause = 0)
&& (FadeNow <= 0)
&& (global.pause_player = 0)&& (global.nuclearblast_available > 0)
{
	x = drawX+(abilitylimitID*17)-17;
	y = drawY;
	draw_self();
}
