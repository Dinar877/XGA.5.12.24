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

//kill after too much time
if (timer < 1)
{
	timer += ((1/60)/7);	
}
else if (timer >= 1)
{
	if (audio_exists(emitter_player))
	{
		audio_stop_sound(emitter_player);
	}
	with(inst_ThdC)
	{
		if (audio_exists(emitter_player))
		{
			audio_stop_sound(emitter_player);
		}
	}
	with(inst_ThdF)
	{
		if (audio_exists(emitter_player))
		{
			audio_stop_sound(emitter_player);
		}
	}
	
	instance_destroy(inst_ThdC);
	instance_destroy(inst_ThdF);
	instance_destroy();
	exit;
}


//move
if (directionX == 1) // right
{
	x += xSpeed;
}
else if (directionX == -1) // left
{
	x -= xSpeed;
}

if (xSpeed < 1)
{
	xSpeed = xSpeed + xSpeedAdder;
}


//move the big thunders
if (inst_ThdC > -1)
{
	inst_ThdC.x = x;
}

if (inst_ThdF > -1)
{
	inst_ThdF.x = x;
}