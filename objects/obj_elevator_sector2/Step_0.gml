/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (delay < 1) && (selected == 1)
{
	delay += 0.05;	
}
else if (delay >= 1) && (selected == 1) && (on == 0) && (jump_pressed)
{
	var sndy = audio_play_sound(snd_tram_departing,1000,false,global.sfx_volume)
	audio_sound_gain(sndy,0,2500)
	
	on = 1
	instance_destroy(obj_elevator_sector1)
	
	with(obj_elevator_screeneffect)
	{
		go = 1	
	}
	instance_destroy(obj_elevator_exit)
	instance_destroy(obj_elevator_arrow)
	instance_create(x,y,obj_elevator_mover)
	if (instance_exists(obj_elevator_top1))
	{
		with(obj_elevator_top1)
		{
			off = 1	
		}
		with(obj_elevator_mover)
		{
			direction1 = -0.015;	
		}
	}
	if (instance_exists(obj_elevator_top1_right))
	{
		with(obj_elevator_top1_right)
		{
			off = 1	
		}
		with(obj_elevator_mover)
		{
			direction1 = 0.015;	
		}
	}
	
	with(object_player2_0_sprites)
	{
		image_index = 0
		image_speed = 1
		sprite_index = spr_typing_active_left
	}
	
	instance_destroy()
	global.sector_transition = 1;
}


