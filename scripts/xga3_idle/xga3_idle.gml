function xga3_idle() {

	//turning
	if (obj_player.x > self.x) && (facing = -1)
	{
		State_machine_switch_state(xga3_turning);
		exit
	}
	else if (obj_player.x < self.x) && (facing = 1)
	{
		State_machine_switch_state(xga3_turning);
		exit
	}


	//stab
	if (piercetimer >= 1) && (collision_rectangle(x-400,y-40,x+400,y+100,obj_player,false,true))
	{
		if (sprite_index = spr_xga3_idle_left)
		{
			sprite_index = spr_xga3_stabh_left;
			image_index = 0;
		}
		else if (sprite_index = spr_xga3_idle_right)
		{
			sprite_index = spr_xga3_stabh_right;
			image_index = 0;
		}
		shoottimer = 0;
		attack4timer = 0;
		piercetimer = 0;
		vinetimer = 0;
		CvomitTimer = 0;
		
		dist = 0;
		State_machine_switch_state(xga3_stab);
		exit;
	}
	
	//vertical slash
	if (attack4timer >= 1) && (collision_rectangle(x-400,y-80,x+400,y-300,obj_player,false,true))
	{
		shoottimer = 0;
		attack4timer = 0;
		piercetimer = 0;
		vinetimer = 0;
		CvomitTimer = 0;
		
		dist = 0;
		
		snd = audio_play_sound(snd_xga3_vswing_roar,1000,false,global.sfx_volume);
		
		State_machine_switch_state(xga3_vswing);
		exit;
	}
	
	//downvomit
	if (vinetimer >= 1) && (collision_rectangle(x-400,y-40,x+400,y+100,obj_player,false,true))
	{
		if (sprite_index = spr_xga3_idle_left)
		{
			sprite_index = spr_xga3_vomit_part1_left;
			image_index = 0;
		}
		else if (sprite_index = spr_xga3_idle_right)
		{
			sprite_index = spr_xga3_vomit_part1_right;
			image_index = 0;
		}
		
		
		shoottimer = 0;
		attack4timer = 0;
		piercetimer = 0;
		vinetimer = 0;
		CvomitTimer = 0;
		
		dist = 0;
		State_machine_switch_state(xga3_downvomit);
		exit;
	}
	
	//Cvomit
	if (CvomitTimer >= 1) && (collision_rectangle(x-400,y-80,x+400,y-300,obj_player,false,true))
	{
		if (sprite_index = spr_xga3_idle_left)
		{
			sprite_index = spr_xga3_Cvomit_prep_left;
			image_index = 0;
		}
		else if (sprite_index = spr_xga3_idle_right)
		{
			sprite_index = spr_xga3_Cvomit_prep_right;
			image_index = 0;
		}
		
		snd = audio_play_sound(snd_electricity_short,1000,false,global.sfx_volume * 4);
		audio_sound_pitch(snd,0.4);
		
		shoottimer = 0;
		attack4timer = 0;
		piercetimer = 0;
		vinetimer = 0;
		CvomitTimer = 0;
		
		dist = 0;
		State_machine_switch_state(xga3_Cvomit);
		exit;
	}
	
	//upvomit
	if (shoottimer >= 1) && (collision_rectangle(x-400,y-80,x+400,y-300,obj_player,false,true))
	{
		if (sprite_index = spr_xga3_idle_left)
		{
			sprite_index = spr_xga3_upvomit_left;
			image_index = 0;
		}
		else if (sprite_index = spr_xga3_idle_right)
		{
			sprite_index = spr_xga3_upvomit_right;
			image_index = 0;
		}
		shoottimer = 0;
		attack4timer = 0;
		piercetimer = 0;
		vinetimer = 0;
		CvomitTimer = 0;
		dist = 0;
		State_machine_switch_state(xga3_upvomit);
		exit;
	}
	
	
	var minTimer = 1;
	var maxTimer = 1.5;


	shoottimer += random_range(((1/room_speed)/minTimer),((1/room_speed)/maxTimer));
	vinetimer += random_range(((1/room_speed)/minTimer),((1/room_speed)/maxTimer));
	attack4timer += random_range(((1/room_speed)/minTimer),((1/room_speed)/maxTimer));
	piercetimer += random_range(((1/room_speed)/minTimer),((1/room_speed)/maxTimer));
	CvomitTimer += random_range(((1/room_speed)/minTimer),((1/room_speed)/maxTimer));

	

}
