function bugspider_walking() {
	if (sprite_index = spr_boss_bugspider_walkleft) && (place_meeting(x,y,obj_block2_invisible_bossdoor))
	{
		 sprite_index = spr_boss_bugspider_spinright;
		 image_index = 0;
		 spintimer = 0;
		 shinetimer = 0;
		 energytimer = 0;
		 State_machine_switch_state(bugspider_spinning)
	}
	else if (sprite_index = spr_boss_bugspider_walkright) && (place_meeting(x,y,obj_block2_invisible_bossdoor))
	{
		 sprite_index = spr_boss_bugspider_spinleft;
		 image_index = 0;
		 spintimer = 0;
		 shinetimer = 0;
		 energytimer = 0;
		 State_machine_switch_state(bugspider_spinning)
	}

	if (id.x < obj_player.x) && (sprite_index = spr_boss_bugspider_walkleft)
	{
		 sprite_index = spr_boss_bugspider_walkright;
	}
	else if (id.x > obj_player.x) && (sprite_index = spr_boss_bugspider_walkright)
	{
		 sprite_index = spr_boss_bugspider_walkleft;
	}

	if (round(image_index) == 0) or (round(image_index) == 10)
	{
		with(obj_camera)
		{
			if (yshake <= 0)
			{
				yshake = 2;
				yshakeno = 3;
				audio_stop_sound(snd_rockimpact1)
				audio_stop_sound(snd_rockimpact2)
				audio_stop_sound(snd_rockimpact3)
				
				var decider = round(random_range(0,2))
	
				if (decider == 0)
				{
					var snd = audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)	
				}
				else if (decider == 1)
				{
					var snd = audio_play_sound(snd_rockimpact2,1000,false,global.sfx_volume)	
				}
				else if (decider == 2)
				{
					var snd = audio_play_sound(snd_rockimpact3,1000,false,global.sfx_volume)	
				}
				
				snd = audio_sound_gain(snd,global.sfx_volume,0)
				
				
			}
		}
	}

	if (id.x < obj_player.x) && (sprite_index = spr_boss_bugspider_walkright) && (spintimer < 1)
	{
		 with(inst)
		 {
			hspd = 1/4;
			if (!place_meeting(x+hspd,y,obj_block2_invisible))
			{
				script_execute(Moving_slow_right)
			}
		 }
	}
	else if (id.x > obj_player.x) && (sprite_index = spr_boss_bugspider_walkleft) && (spintimer < 1)
	{
		 with(inst)
		 {
			hspd = -1/4;
			if (!place_meeting(x+hspd,y,obj_block2_invisible))
			{
				script_execute(Moving_slow_left)
			}
		 }
	}

	if (id.x > obj_player.x) && (sprite_index = spr_boss_bugspider_walkleft) && (spintimer >= 1)
	{
		 sprite_index = spr_boss_bugspider_spinleft;
		 image_index = 0;
		 shinetimer = 0;
		 spintimer = 0;
		 energytimer = 0;
		 State_machine_switch_state(bugspider_spinning)
	}
	else if (id.x < obj_player.x) && (sprite_index = spr_boss_bugspider_walkright) && (spintimer >= 1)
	{
		 sprite_index = spr_boss_bugspider_spinright;
		 image_index = 0;
		 shinetimer = 0;
		 spintimer = 0;
		 energytimer = 0;
		 State_machine_switch_state(bugspider_spinning)
	}


	if (shinetimer >= 1)
	{
		 sprite_index = spr_boss_bugspider_eyeshine;
		 image_index = 0;
		 shinetimer = 0;
		 spintimer = 0;
		 energytimer = 0;
		 State_machine_switch_state(bugspider_eyeshine)
	}

	if (energytimer >= 1) && (!place_meeting(x+60,y,obj_block2_invisible_bossdoor)) && (!place_meeting(x-60,y,obj_block2_invisible_bossdoor))
	{
		 sprite_index = spr_boss_bugspider_eyeshine_energy;
		 image_index = 0;
		 energytimer = 0;
		 shinetimer = 0;
		 spintimer = 0;
		 State_machine_switch_state(bugspider_energy)
	}

	spintimer += random_range(((1/room_speed)/3),((1/room_speed)/5))
	shinetimer += random_range(((1/room_speed)/3),((1/room_speed)/5))
	energytimer += random_range(((1/room_speed)/3),((1/room_speed)/5))




}
