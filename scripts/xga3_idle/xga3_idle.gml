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
		shoottimer = 0
		attack4timer = 0
		piercetimer = 0
		vinetimer = 0
		dist = 0
		State_machine_switch_state(xga3_stab)
		exit;
	}
	
	//vertical slash
	if (attack4timer >= 1) && (collision_rectangle(x-400,y-200,x+400,y+100,obj_player,false,true))
	{
		shoottimer = 0
		attack4timer = 0
		piercetimer = 0
		vinetimer = 0
		dist = 0
		
		snd = audio_play_sound(snd_alien_talking,1000,false,global.sfx_volume);
		
		State_machine_switch_state(xga3_vswing)
		exit;
	}
	
	//upvomit
	if (shoottimer >= 1)
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
		shoottimer = 0
		attack4timer = 0
		piercetimer = 0
		vinetimer = 0
		dist = 0
		State_machine_switch_state(xga3_upvomit)
		exit;
	}


	shoottimer += random_range(((1/room_speed)/0.25),((1/room_speed)/1))
	vinetimer += random_range(((1/room_speed)/0.25),((1/room_speed)/1))
	attack4timer += random_range(((1/room_speed)/0.25),((1/room_speed)/1))
	eyetimer += random_range(((1/room_speed)/0.25),((1/room_speed)/1))
	piercetimer += random_range(((1/room_speed)/0.25),((1/room_speed)/1))


	

}
