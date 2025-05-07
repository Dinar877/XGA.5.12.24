function Scorpion_walk() {
	//get out of running state
	if (sprite_index = spr_scorpion_walk_left) 
	&& (inst2.collision_othertoad <= 0) 
	&& ((global.invisibility = 1) 
	or (inst2.inst_collision <= 0)
	or (inst2.inst_blockfree > 0) 
	or (idleanim_walktimer <= 0)
	or (inst2.blockInFront))
		{
			//sprites
			if (sprite_index = spr_scorpion_walk_left)
			{
				sprite_index = spr_scorpion_stand_left
			}
			else if (sprite_index = spr_scorpion_walk_right)
			{
				sprite_index = spr_scorpion_stand_right
			}
			
			audio_stop_sound(snd_bug_crawling);
			
			idleanim_walktimer = 0;
			idleanim_turntimer = 0;
			emitter_vol = 0;
			State_machine_switch_state(Scorpion_stand);
			exit;
		}
	if (sprite_index = spr_scorpion_walk_right) 
	&& (inst2.collision_othertoad <= 0) 
	&& ((global.invisibility = 1) 
	or (inst2.inst_collision <= 0)
	or (inst2.inst_blockfree > 0) 
	or (idleanim_walktimer <= 0)
	or (inst2.blockInFront))
		{
			//sprites
			if (sprite_index = spr_scorpion_walk_left)
			{
				sprite_index = spr_scorpion_stand_left
			}
			else if (sprite_index = spr_scorpion_walk_right)
			{
				sprite_index = spr_scorpion_stand_right
			}
			
			audio_stop_sound(snd_bug_crawling);
			
			idleanim_walktimer = 0;
			idleanim_turntimer = 0;
			emitter_vol = 0;
			State_machine_switch_state(Scorpion_stand);
			exit;
		}
	
	idleanim_walktimer -= random_range((1/room_speed)/2,(1/room_speed)/5)
	
	//bug crawling sfx
	if (round(image_index) == round(image_number/2)-1)
	or (round(image_index) == round(image_number)-1)
	{
		if (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
		{
			audio_stop_sound(snd_bug_crawling);	
			audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_bug_crawling,true,1000, global.sfx_volume)
			audio_emitter_gain(global.inst_audio_emitterID[inst_n], (10/dist) * global.sfx_volume)
		}
	}
	
	//actual running code
	if (sprite_index = spr_scorpion_walk_left) && (global.invisibility = 0)
		{
			with(inst2)
			{
				hspd = -1/2
				Moving_slow_left_lessthan1()
			}
		}
	else if (sprite_index = spr_scorpion_walk_right) && (global.invisibility = 0)
		{
			with(inst2)
			{
				hspd = 1/2
				Moving_slow_right_lessthan1()
			}
		}


}
