/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.05;
image_xscale = 0.1;
image_yscale = 0.1;

//audio stop
if (audio_is_playing(ost_mmz_boss))
{
	audio_stop_sound(ost_mmz_boss)
}
else if (audio_is_playing(snd_plant_boss))
{
	audio_stop_sound(snd_plant_boss)
}
else if (audio_is_playing(snd_ice_boss))
{
	audio_stop_sound(snd_ice_boss)
}
else if (audio_is_playing(snd_conveyorbelt_boss))
{
	audio_stop_sound(snd_conveyorbelt_boss)
}

if (audio_is_playing(ost_boss_0_remastered))
{
	audio_stop_sound(ost_boss_0_remastered)
}
else if (audio_is_playing(ost_boss_1_remastered))
{
	audio_stop_sound(ost_boss_1_remastered)
}
else if (audio_is_playing(ost_boss_2_remastered))
{
	audio_stop_sound(ost_boss_2_remastered)
}
else if (audio_is_playing(ost_boss_3_remastered))
{
	audio_stop_sound(ost_boss_3_remastered)
}
else if (audio_is_playing(ost_boss_4_remastered))
{
	audio_stop_sound(ost_boss_4_remastered)
}
else if (audio_is_playing(ost_xga_chasemusic))
{
	audio_stop_sound(ost_xga_chasemusic)
}






//var's
new1 = 0
sndy = 0

if (instance_exists(obj_boss_Greybox_inside))
{
	bossID = obj_boss_Greybox_inside
}
else if (instance_exists(obj_boss_spider_eye))
{
	bossID = obj_boss_spider_eye
}
else if (instance_exists(obj_boss_flowey))
{
	bossID = obj_boss_flowey
}
else if (instance_exists(obj_boss_darklord_hitbox))
{
	bossID = obj_boss_darklord_hitbox
}
else if (instance_exists(obj_boss_kingstalker_hitbox))
{
	bossID = obj_boss_kingstalker_hitbox
}
else if (instance_exists(obj_boss_turtle_hitbox))
{
	bossID = obj_boss_turtle_hitbox
}
else if (instance_exists(obj_boss_gorilla_hitbox))
{
	bossID = obj_boss_gorilla_hitbox
}
else if (instance_exists(obj_boss_bugspider_hitbox))
{
	bossID = obj_boss_bugspider_hitbox
}
else if (instance_exists(obj_boss_darkeater_stage1_hitbox))
{
	bossID = obj_boss_darkeater_stage1_hitbox
}
else if (instance_exists(obj_darkeater_hitbox))
{
	bossID = obj_darkeater_hitbox
}
else if (instance_exists(obj_boss_bigsnail_hitbox))
{
	bossID = obj_boss_bigsnail_hitbox
}
else bossID = -1