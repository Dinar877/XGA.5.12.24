/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_electricity)
	exit;	
}
else
{
	audio_resume_sound(snd_electricity)	
}

//play sfx properly
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_electricity,id.x,id.y,0,100,20,1,true,1000,global.sfx_volume)
}

//audio
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(20/dist) * global.sfx_volume,0)



if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.nanoshield <= 0)
{
    global.hurt = 1;
	global.healthKiller = 1;
}
else if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dash2_spark = 0) && (global.nanoshield > 0)
{
    exit
}

//glow effect
xscaleglow = random_range(0.9,1.1);
yscaleglow = random_range(0.9,1.1);
imageAngleGlow = random_range(0,360);