/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player))
{
	exit;	
}

x = obj_player.x
y = obj_player.y

audio_stop_sound(snd_bh_thunderstrike)
audio_play_sound(snd_bh_thunderstrike,1000,false,global.sfx_volume)