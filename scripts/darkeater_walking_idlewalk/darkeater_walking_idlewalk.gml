function darkeater_walking_idlewalk() {
	
	var inst_circle_detected = collision_rectangle(x+(70*facing),y-10,x,y+5,obj_player,false,true)
	
	if (inst_circle_detected > -1)
	{
		State_machine_switch_state(darkeater_idle)
		exit
	}
	
	
	state1 = darkeater_walking_idlewalk
	
	if (facing == -1) && (idlewalk <= 0) && (global.invisibility == 0)
		{
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_left;
			idlewalk = 0
			State_machine_switch_state(darkeater_undetected_idlewalk);
		}
	else if (facing == 1) && (idlewalk <= 0) && (global.invisibility == 0)
		{
			obj_darkeater_sprites.sprite_index = spr_darkeater_idle_right;
			idlewalk = 0
			State_machine_switch_state(darkeater_undetected_idlewalk);
		}
	
	if (facing == -1) && (global.invisibility == 0) && (idlewalk > 0)
		{
			obj_darkeater_sprites.sprite_index = spr_darkeater_walk_left;
			hspd = -0.25;
			Moving_slow_left_lessthan1()
			idlewalk -= 1;
		}
	else if (facing == 1) && (global.invisibility == 0) && (idlewalk > 0)
		{
			obj_darkeater_sprites.sprite_index = spr_darkeater_walk_right;
			hspd = 0.25;
			Moving_slow_right_lessthan1()
			idlewalk -= 1;
		}

	if (obj_darkeater_sprites.sprite_index = spr_darkeater_walk_right)
	{
		if (round(obj_darkeater_sprites.image_index) == 4) or (round(obj_darkeater_sprites.image_index) == 10)
		{
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
				}
			}
			sndID = snd_beamexplosion
			audio_stop_sound(sndID)	
			audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
		}
	}
	else if (obj_darkeater_sprites.sprite_index = spr_darkeater_walk_left)
	{
		if (round(obj_darkeater_sprites.image_index) == 7) or (round(obj_darkeater_sprites.image_index) == 0)
		{
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
				}
			}
			sndID = snd_beamexplosion
			audio_stop_sound(sndID)	
			audio_play_sound_on(global.inst_audio_emitterID[inst_n],sndID,false,1000, global.sfx_volume)	
		}
	}



}
