function xga3_upvomit() {
	
	if (round(image_index) == 3) && (!audio_is_playing(snd_xga_swallow))
	{
		snd = audio_play_sound(snd_xga_swallow,1000,false,global.sfx_volume)
	}
	
	if (floor(image_index) == 18) && (attackLimit == false)
	{
		audio_stop_sound(snd_xga_swallow)
		audio_stop_sound(snd_xga3_vomit1)
		audio_stop_sound(snd_xga3_vomit2)
		audio_stop_sound(snd_xga3_vomit3)
		
		var randy = round(random_range(0,2))
		
		if (randy == 0)
		{
			snd = audio_play_sound(snd_xga3_vomit1,1000,false,global.sfx_volume)		
		}
		else if (randy == 1)
		{
			snd = audio_play_sound(snd_xga3_vomit2,1000,false,global.sfx_volume)		
		}
		if (randy == 2)
		{
			snd = audio_play_sound(snd_xga3_vomit3,1000,false,global.sfx_volume)		
		}
		
		//spit
		if (sprite_index = spr_xga3_upvomit_left)
		{
			//spawn spit visual effect
			while (instance_number(obj_xga3_spit) < 30)
			{
				var randy2 = random_range(-45,33);
				instance_create_depth(x+randy2,y-170,depth-1,obj_xga3_spit);
			}
		}
		else if (sprite_index = spr_xga3_upvomit_right)
		{
			//spawn spit visual effect
			while (instance_number(obj_xga3_spit) < 30)
			{
				var randy2 = random_range(-28,40);
				instance_create_depth(x+randy2,y-170,depth-1,obj_xga3_spit);
			}
		}
		
		//spawn different attacks
		attackLimit = true;
		var ranAtk = round(random_range(0,3));
		//var ranAtk = 2
		var dir = 0;
		
		if (sprite_index = spr_xga3_upvomit_left)
		{
			 dir = -1;
		}
		else if (sprite_index = spr_xga3_upvomit_right)
		{
			 dir= 1;
		}
		
		if (ranAtk == 0) //invisability
		{
			instance_create_depth(x,y-190,depth-1,obj_xga3_inviseye_ball);
			
			if (dir = 1)
			{
				obj_xga3_inviseye_ball.directionX = 0;
			}
			else if (dir = -1)
			{
				obj_xga3_inviseye_ball.directionX = 1;
			}
		}
		else if (ranAtk == 1) //nanothunder
		{
			instance_create_depth(x,y-190,depth-1,obj_xga3_nanoball_prep);
		}
		else if (ranAtk == 2) //nuclear crystals
		{
			instance_create_depth(x,y-190,depth-1,obj_xga3_nuclearcrystal);
			instance_create_depth(x,y-190,depth-1,obj_xga3_nuclearcrystal);
			instance_create_depth(x,y-190,depth-1,obj_xga3_nuclearcrystal);
			
			if (dir = 1)
			{
				obj_xga3_nuclearcrystal.xSpeed = 3
			}
			else if (dir = -1)
			{
				obj_xga3_nuclearcrystal.xSpeed = -3
			}
		}
		else if (ranAtk == 3) //shockwave
		{
			instance_create_depth(x,y-190,depth-1,obj_xga3_shockwaveball_prep);
		}
		
	}

	
	
	//reset
	if (sprite_index = spr_xga3_upvomit_left) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_left;
		 image_index = 0;
		 
		 attackLimit = false;
		 
		 State_machine_switch_state(xga3_idle)
	}
	else if (sprite_index = spr_xga3_upvomit_right) && (image_index >= image_number-1)
	{
		 sprite_index = spr_xga3_idle_right;
		 image_index = 0
		 
		 attackLimit = false;
		 
		 State_machine_switch_state(xga3_idle)
	}


}
