/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
endload = 0;
endload2 = 0;
endload3 = 0;
saving = 0;
endsaving = 0;

timer1 = 0;

inst_spawner = -1

//current sector music stop
if ((audio_is_playing(global.sector_music)) > 0)
{
	audio_stop_sound(global.sector_music)
}

audio_group_stop_all(audiogroup_music);




if (!audio_is_playing(snd_boss_warning))
{
	audio_play_sound(snd_boss_warning,1000,false,global.sfx_volume)
}


if (instance_exists(obj_boss_bugspider_hitbox))
{
	spawnerID = obj_boss_bugspider_hitbox
}
else if (instance_exists(obj_boss_darkeater_stage1_hitbox))
{
	spawnerID = obj_boss_darkeater_stage1_hitbox
}
else if (instance_exists(obj_boss_spider_legs))
{
	spawnerID = obj_boss_spider_legs
}
else if (instance_exists(obj_boss_turtle_hitbox))
{
	spawnerID = obj_boss_turtle_hitbox
}
else if (instance_exists(obj_boss_darklord_hitbox))
{
	spawnerID = obj_boss_darklord_hitbox
}
else if (instance_exists(obj_boss_flowey))
{
	spawnerID = obj_boss_flowey
}
else if (instance_exists(obj_boss_gorilla_hitbox))
{
	spawnerID = obj_boss_gorilla_hitbox
}
else if (instance_exists(obj_boss_Greybox_inside))
{
	spawnerID = obj_boss_Greybox_inside
}
else if (instance_exists(obj_boss_kingstalker_hitbox))
{
	spawnerID = obj_boss_kingstalker_hitbox
}
else if (instance_exists(obj_darkeater_hitbox))
{
	spawnerID = obj_darkeater_hitbox
}
else if (instance_exists(obj_boss_bigsnail_hitbox))
{
	spawnerID = obj_boss_bigsnail_hitbox
}
else spawnerID = -1

//position correctly on screen
if (instance_exists(obj_camera))
{
	x = obj_camera.x-160;
	y = obj_camera.y-90;
}