/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1)
or (global.pause_player = 1)
or (global.upgrade_process_data = 1)
or (global.room_transition_down = 1) or (global.room_transition_up = 1)
or (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
{
	exit;	
}

if (image_alpha> 0) 
{ 
	image_alpha -= 0.01+(counter/50); 
}
else if (image_alpha <= 0) && (counter < 15)
{
	image_alpha = 0.2;
	counter++
}

if (image_alpha <= 0) && (counter >= 15)
{
	instance_create_depth(x,y,id.depth-1,obj_boss_darkeater_shine_explosion)
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	instance_destroy()	
}