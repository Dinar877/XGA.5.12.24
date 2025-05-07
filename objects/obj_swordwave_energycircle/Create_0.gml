/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.6;
switch1 = 0
switch2 = 0

//set correct sprite index
if (global.suit_pure = 1) && (global.suit_shock = 0)
{
	sprite_index = spr_sword_wave_dash;
}
else if (global.suit_shock = 1)
{
	sprite_index = spr_sword_wave_volt;
}
else sprite_index = spr_sword_wave;