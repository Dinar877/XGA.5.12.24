/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if (place_meeting(x,y,obj_player)) && (obj_player.hspd != 0) && (hit = 0)
	{
		hit = 1
		hspd = obj_player.hspd
		
		var snd1 = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		audio_sound_gain(snd1,0.2,0)
	}
}

if (hit = 1)
{
	image_angle += 14;
	x = (x + hspd)
	y = (y+2+adder2);
	adder2 += 0.5;
}