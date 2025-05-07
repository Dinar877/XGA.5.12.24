/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
savebegin_timer = 0;
ready = 0;
stopnow = 0;
textspawnerID = -1;

if (global.spacestation_active <= 0)
{
	sprite_index = spr_navigation_lightpillar_struggling
	image_alpha = 0;
}