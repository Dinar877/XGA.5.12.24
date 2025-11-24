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

enemy_hurt_player_code(4);



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

//timer
if (sprite_index = spr_xga3_shockwave_smallball)
{
	if (timer < 1)
	{
		timer += ((1/60)/4);	
	}
	else if (timer >= 1)
	{
		sprite_index = spr_xga3_shockwave_smallball_explode;
		speed = 0;
	}
}

//collision
if ((place_meeting(x,y,obj_player)) 
or (place_meeting(x,y,obj_shockwave_energycircle))
or ((global.beam_shield_available = true) && ((place_meeting(x,y,obj_bullet)) or (place_meeting(x,y,obj_bullet_side1)) or (place_meeting(x,y,obj_bullet_side2)))))
&& (speed != 0)
{
	speed = 0;
	sprite_index = spr_xga3_shockwave_smallball_explode;
	image_speed = 1;
	image_index = 0;
}

//move
if (instance_exists(obj_player)) && (speed != 0)
{
    var dist = distance_to_object(obj_player);
    if (dist > 1) 
	{
        move_towards_point(obj_player.x, obj_player.y, speed);
    } 
	else 
	{
        speed = 0;
		sprite_index = spr_xga3_shockwave_smallball_explode;
		image_speed = 1;
		image_index = 0;
    }
}


//explosion end
if (sprite_index = spr_xga3_shockwave_smallball_explode) && (image_index >= image_number-1)
{
	if (audio_exists(emitter_player))
	{
		audio_stop_sound(emitter_player);
	}
	instance_destroy();	
}