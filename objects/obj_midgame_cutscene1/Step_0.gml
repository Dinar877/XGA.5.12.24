//sfx
if (round(image_index) == 18) //walk
{
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 25) //walk
{
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 26) //stab scientist
{
	audio_play_sound(snd_xga_stab_effect,1000,false,global.sfx_volume);
}
else if (round(image_index) == 28) //jump
{
	audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume);
}
else if (round(image_index) == 30) //land
{
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 45) //eat scientist sfx
{
	audio_play_sound(snd_xga_swallow,1000,false,global.sfx_volume);
}
else if (round(image_index) == 70) //player electricity
{
	audio_play_sound(snd_electricity1,1000,false,global.sfx_volume);
}
else if (round(image_index) == 72) //stop player electricity
{
	audio_stop_sound(snd_electricity1);
}
else if (round(image_index) == 77) //player electricity
{
	audio_play_sound(snd_electricity1,1000,false,global.sfx_volume);
}
else if (round(image_index) == 78) //stop player electricity
{
	audio_stop_sound(snd_electricity1);
}
else if (round(image_index) == 87) //player electricity
{
	audio_play_sound(snd_electricity1,1000,false,global.sfx_volume);
}
else if (round(image_index) == 89) //stop player electricity
{
	audio_stop_sound(snd_electricity1);
}
else if (round(image_index) == 90) //walk
{
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 97) //player electricity
{
	audio_play_sound(snd_electricity1,1000,true,global.sfx_volume);
}
else if (round(image_index) == 98) //stop player electricity + walk
{
	audio_stop_sound(snd_electricity1);
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 108) //slash player
{
	audio_play_sound(snd_sword_wave,1000,false,global.sfx_volume);
	audio_play_sound(snd_electricity1,1000,true,global.sfx_volume);
}
else if (round(image_index) == 112) //player electricity
{
	audio_play_sound(snd_metalcrash,1000,true,global.sfx_volume);
}
else if (round(image_index) == 133) //stop player electricity
{
	audio_stop_sound(snd_electricity1);
}
else if (round(image_index) == 152) //player electricity
{
	audio_play_sound(snd_metalcrash,1000,true,global.sfx_volume);
}
else if (round(image_index) == 154) //stop player electricity
{
	audio_stop_sound(snd_electricity1);
}
else if (round(image_index) == 164) // bh thunderstrike
{
	audio_play_sound(snd_bh_thunderstrike,1000,false,global.sfx_volume);
}
else if (round(image_index) == 177) // bh thunderstrike 2
{
	audio_stop_sound(snd_bh_thunderstrike);
	audio_play_sound(snd_bh_thunderstrike,1000,false,global.sfx_volume);
	audio_play_sound(snd_xga_jump,1000,true,global.sfx_volume);
}
else if (round(image_index) == 182) // bh thunderstrike 2
{
	audio_stop_sound(snd_xga_jump);
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume);
}
else if (round(image_index) == 198) // bh save
{
	audio_play_sound(snd_bh_talk,1000,false,global.sfx_volume);
}
else if (round(image_index) == 204) // xga teleport
{
	audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume);
}
else if (round(image_index) == image_number-1) // xga teleport
{
	instance_create_layer(1055,285,layer_get_id("Inst_scrn"),obj_scrnDark);
}