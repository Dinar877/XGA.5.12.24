//checks what location, relative to the overall area map (not the map of the room, but
//the map of the entire collection of rooms), where each map tile is.
global.pause_player = 1
instance_deactivate_all(false)
instance_activate_object(obj_player)
instance_activate_object(object_player2_0_sprites)
instance_activate_object(obj_camera)
instance_activate_object(obj_scrnDark_random_loadroom_intro)
instance_activate_object(obj_scrnDark_random_sectortransitioning_introR)
instance_activate_layer(layer_get_id("Instances_3"))
instance_activate_layer(layer_get_id("Instances_2"))
obj_player.x = 160;
obj_player.y = 96;
object_player2_0_sprites.x = 160;
object_player2_0_sprites.y = 97;
obj_camera.x = 160;
obj_camera.y = 96;

if (audio_is_playing(snd_tram_departing))
{
	audio_stop_sound(snd_tram_departing)
	var sndy = audio_play_sound(snd_tram_going,1000,false,global.sfx_volume)
	audio_sound_gain(sndy,0,2500)
}

global.sector_next_left = 0 ;
global.sector_next_right = rm_elevator_sector1

if (instance_exists(obj_elevator_top1))
	{
		with(obj_elevator_top1)
		{
			off = 1	
		}
	}
if (instance_exists(obj_elevator_top1_right))
	{
		with(obj_elevator_top1_right)
		{
			off = 1	
		}
	}

with(object_player2_0_sprites)
{
	sprite_index = spr_stand_right_2	
	image_speed = 0.5;
}