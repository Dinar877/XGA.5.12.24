//wait for screen black to fade away
if (!instance_exists(obj_scrnDark_trueintro_fadeout))
{
	image_speed = 1;	
}

//sfx swoop in
if (image_speed = 1) && (round(image_index) == 0)
&& (sprite_index = spr_midgame_cutscene2_bh_enter)
&& (!audio_is_playing(snd_player_spinjump_shorter))
&& (!instance_exists(obj_scrnDark_trueintro_fadeout))
{
	var snd = audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume);
}

//finish animation -> stationary animation + spawn player animation
if (image_speed = 1) && (round(image_index) >= image_number-1)
&& (sprite_index = spr_midgame_cutscene2_bh_enter)
{
	sprite_index = spr_bh_big_nolines;
	x = 650;
	y = 538;
	
	instance_create_depth(643,556,id.depth-1,obj_midgame_cutscene2_player);
}