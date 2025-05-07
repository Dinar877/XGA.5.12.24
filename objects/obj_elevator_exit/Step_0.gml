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
	audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
	
	on = 1
	instance_destroy(obj_elevator_exit)
	with(object_player2_0_sprites)
	{
		if (sprite_index = spr_typing_begin_left)
		{
			sprite_index = spr_typing_end_left
			image_index = 0;
			image_speed = 1
		}
		else if (sprite_index = spr_typing_begin_right)
		{
			sprite_index = spr_typing_end_right
			image_index = 0;
			image_speed = 1
		}	
	}
	
	with(obj_elevator_screeneffect)
	{
		go = 1	
	}
	instance_destroy(obj_elevator_sector1)
	instance_destroy(obj_elevator_sector2)
	instance_destroy(obj_elevator_sectortutorial)
	instance_destroy(obj_elevator_sector3)
	instance_destroy(obj_elevator_sector4)
	instance_destroy(obj_elevator_arrow)
	
	if (instance_exists(obj_elevator_top1))
	{
		with(obj_elevator_top1)
		{
			off = 0	
			on = 0
		}
	}
	if (instance_exists(obj_elevator_top1_right))
	{
		with(obj_elevator_top1_right)
		{
			off = 0
			on = 0
		}
	}
	
	with(obj_player)
	{
		State_machine_switch_state(Idle)	
	}
}

