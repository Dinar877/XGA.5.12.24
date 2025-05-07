function Dashing2_begin() {
	global.lockdown_facingDir = 1;
	global.shoot = 0;
	global.dashbegin2 = 1
	dash2timer = 4;
	
	vspd_wind = 0
	
	input_horizontal = 0;
	sprite_index = spr_player
	  

	if (enemy_slowdownswitch = 1)
	{
		global.dash2 = 0
		global.dash2_spark = 0
		global.screwjump = 0
		global.turning_dash2 = 0;
		global.lockdown_facingDir = 0;
		global.dashbegin2 = 0
	
	
		State_machine_switch_state(Idle)
	}

	with(object_player2_0_sprites)
	{
	    if (global.suit_pure = 1)
		{
			if (global.facingDir = -1) && (global.dashbegin2 = 1) && (global.hurt = 0)
		    {
		        with(obj_player)
					{
						if (global.suit_shock = 0)
						{
							hspd = -4;
						}
						else if (global.suit_shock = 1)
						{
							hspd = -4;
							global.dash2_spark = 1
						}
			
						script_execute(Moving_slow_left_biggerthan1);
					}
		
				if (image_index < 4) && (sprite_index != spr_player_dash2_beginL)
		                {
		                    if (global.suit_shock = 0)
							{
								audio_stop_sound(snd_dash);
								if (!audio_is_playing(snd_dash))
								{
									var sndy = audio_play_sound(snd_dash,1,false,global.sfx_volume);
									audio_sound_gain(sndy,0,1000)
								}
							}
							else if (global.suit_shock = 1)
							{
								audio_stop_sound(snd_dash);
								if (!audio_is_playing(snd_dash))
								{
									var sndy = audio_play_sound(snd_dash,1,false,global.sfx_volume);
									audio_sound_gain(sndy,0,1000)
								}
						
								audio_stop_sound(snd_electricity);
								if (!audio_is_playing(snd_electricity))
								{
									var sndy = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
									audio_sound_gain(sndy,0,1000)
								}
							}
					
							if (global.suit_shock = 0)
							{
								instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_player_dasheffect)
								with(obj_player_dasheffect)
								{
									sprite_index = spr_grounddash_left	
									image_index = 0
								}
							}
							else if (global.suit_shock = 1)
							{
								instance_create_depth(x,y,object_player2_0_sprites.depth-1,obj_player_dashspark)
								with(obj_player_dashspark)
								{
									sprite_index = spr_dashspark_left
									image_index = 0
								}
							}
					
							started = 1;
		                    image_index = 0;
		                    y = obj_player.y+1;
		                    x = obj_player.x;
		                    sprite_index = spr_player_dash2_beginL;
		                }
		        if (image_index < 4) && (sprite_index = spr_player_dash2_beginL)
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginL;
		        }
		        if (image_index >= 4) && (sprite_index = spr_player_dash2_beginL)
		        {
		            started = 0;
		            adder = 0;
		            y = obj_player.y+1;
		            x = obj_player.x;
		            with(obj_player)
		                {
		                State_machine_switch_state(Dashing2_use);
		                global.dashbegin2 = 0;
		                global.dash2 = 1;
		                }
		        }
		    }
    
		    if (global.facingDir = 1) && (global.dashbegin2 = 1) && (global.hurt = 0)
		    {
		        with(obj_player)
					{
						if (global.suit_shock = 0)
						{
							hspd = 4;
						}
						else if (global.suit_shock = 1)
						{
							hspd = 4;
							global.dash2_spark = 1
						}
						script_execute(Moving_slow_right_biggerthan1);
					}
		
				if (image_index < 4) && (sprite_index != spr_player_dash2_beginR1)
		        {
		                    if (global.suit_shock = 0)
							{
								audio_stop_sound(snd_dash);
								if (!audio_is_playing(snd_dash))
								{
									var sndy = audio_play_sound(snd_dash,1,false,global.sfx_volume);
									audio_sound_gain(sndy,0,1000)
								}
							}
							else if (global.suit_shock = 1)
							{
								audio_stop_sound(snd_dash);
								if (!audio_is_playing(snd_dash))
								{
									var sndy = audio_play_sound(snd_dash,1,false,global.sfx_volume);
									audio_sound_gain(sndy,0,1000)
								}
						
								audio_stop_sound(snd_electricity);
								if (!audio_is_playing(snd_electricity))
								{
									var sndy = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
									audio_sound_gain(sndy,0,1000)
								}
							}
					
							if (global.suit_shock = 0)
							{
								instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_player_dasheffect)
								with(obj_player_dasheffect)
								{
									sprite_index = spr_grounddash_right
									image_index = 0
								}
							}
							else if (global.suit_shock = 1)
							{
								instance_create_depth(x,y,object_player2_0_sprites.depth-1,obj_player_dashspark)
								with(obj_player_dashspark)
								{
									sprite_index = spr_dashspark_right
									image_index = 0
								}
							}
					
							started = 1;
		                    image_index = 0;
		                    y = obj_player.y+1;
		                    x = obj_player.x;
		                    sprite_index = spr_player_dash2_beginR1;
		        }
		        if (image_index < 4) && (sprite_index = spr_player_dash2_beginR1)
		        {
		            y = obj_player.y+1;
		            x = obj_player.x;
		            sprite_index = spr_player_dash2_beginR1;
		        }
		        if (image_index >= 4) && (sprite_index = spr_player_dash2_beginR1)
		        {
		            started = 0;
		            adder = 0;
		            y = obj_player.y+1;
		            x = obj_player.x;
		            with(obj_player)
		                {
		                State_machine_switch_state(Dashing2_use);
		                global.dashbegin2 = 0;
		                global.dash2 = 1;
		                }
		        }
		    }
		}
	}

	if (global.dashbegin2 == 0) && (global.dash2 == 0)
	{
		timer_dashing_hspd = 0;
		stopper_dashing_afterimages = 0;
	
		global.dash2 = 0;
		global.dashbegin2 = 0;
		global.turning_dash2 = 0;
		global.lockdown_facingDir = 0;
		global.dash2_spark = 0
		if (input_horizontal == 0)
		{
			State_machine_switch_state(Idle);
		}
		else if (input_horizontal != 0)
		{
			State_machine_switch_state(Move);
		}
	}	


}
