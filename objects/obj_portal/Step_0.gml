 /// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

//audio
if (!audio_is_playing(emitter_player))
{
	emitter_player = audio_play_sound_at(snd_portal_nearby,id.x,id.y,0,20,100,1,true,1000);
}

dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
audio_sound_gain(emitter_player,(40/dist) * global.sfx_volume,0)



image_angle += 10;

if (linked1 == false)
{
	with(obj_portal)
	{
		if (id != other.id) //so the same instance cannot compare itself to itself
		&& (otherPortalID == other.otherPortalID)
		{
			linked1 = 1;
			other.linked1 = 1;
			
			//change variable into instance id
			otherPortalID = other.id;
			other.otherPortalID = id;
			
			exit;
		}
	}
	
	instance_destroy();
	exit;
}
else if (linked1 == true) && (activated == false)
{
	if (place_meeting(x,y,obj_player))
	{
		obj_player.x = otherPortalID.x;
		obj_player.y = otherPortalID.y;
		object_player2_0_sprites.x = otherPortalID.x;
		object_player2_0_sprites.y = otherPortalID.y;
		obj_camera.x = otherPortalID.x;
		obj_camera.y = otherPortalID.y;
		
		activated = true;
		otherPortalID.activated = true;
		
		audio_stop_sound(snd_portal_use);
		audio_play_sound(snd_portal_use,1000,false,global.sfx_volume);
	}
}

if (activated == true)
{
	if (!place_meeting(x,y,obj_player))
	{
		with (otherPortalID)
		{
			if (!place_meeting(x,y,obj_player))
			{
				activated = false;
				otherPortalID.activated = false;
			}
		}
	}
}