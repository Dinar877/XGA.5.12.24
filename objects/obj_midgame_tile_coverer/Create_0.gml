/// @description Insert description here
// You can write your code in this editor
if (global.corrupted < 1)
{
	sprite_index = spr_midgame_tile_coverup;
}
else if (global.corrupted >= 1)
{
	sprite_index = spr_midgame_tile_coverup_cor;
}