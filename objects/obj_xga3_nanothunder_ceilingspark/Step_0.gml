/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	audio_pause_sound(snd_electricity)
	exit;	
}
else
{
	audio_resume_sound(snd_electricity)	
}

//hurt player if no nanoshield active
if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.nanoshield <= 0)
{
    global.hurt = 1;
	global.healthKiller = 3;
}



//play sfx properly
if (audio_exists(emitter_player))
{
	if (!audio_is_playing(emitter_player))
	{
		emitter_player = audio_play_sound_at(snd_electricity,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume);
	}

	//audio
	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y);
	audio_sound_gain(emitter_player,(10/dist) * global.sfx_volume,0);
}