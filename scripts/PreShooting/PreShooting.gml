// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreShooting(){
	
	//midair shooting
	if (state = Falling)
	{
		//shooting
		if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0) && (global.turning_dash2 = 0)
		{
			global.jumpingdm = 0;
			global.dash2_spark = 0
			global.dash2_jump = 0
			
			audio_stop_sound(snd_player_spinjump_shorter);
			
			State_machine_switch_state(Fall_shoot);
			global.shoot = 1;
			global.charging = 0;
			
			double_jump = 0;
			shoot_timer = 1;
			
			stopper_bullet_creation = 0;
			limit = 0;
		}

		

		//shoot charging
		if (shoot) && (!shoot_pressed)
		&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0) && (limit = 0)
		&& (global.shoot_instacharge_upgrade == 0)
		{
			global.charging = 1;
		}

		if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
		&& (global.turning = 0)
		{
			with(obj_blast_effect)
			    {
			        if (global.charge_ready = 1)
			        {
			        with(obj_player)
			            {
			                global.jumpingdm = 0;
							global.shoot = 1;
			                global.charge_shot = 1;
			                global.charging = 0;
							
							double_jump = 0;
			                shoot_timer = 1;
							
							audio_stop_sound(snd_player_spinjump_shorter);
							
			                State_machine_switch_state(Fall_shoot);
			            }
			        }
					else if (global.charge_ready = 0) && (global.charging = 0)
					{
						with(obj_player)
						{
							global.jumpingdm = 0;
							global.shoot = 1;
							global.charging = 0;
							
							double_jump = 0;
							shoot_timer = 1;
							
							audio_stop_sound(snd_player_spinjump_shorter);
							
							State_machine_switch_state(Fall_shoot);	
						}
					}
			    }

		}	
	}
	
	//other fall states to mid air shooting
	if ((state = Falling_doublejump) 
	or (state = Falling_Dashing2) or (state = Falling_Dashing2_airdash) or (state = Falling_Dashing2_hydrodash) or (state = Falling_dashhoop)
	or (state = Sword_jump))
	{
		if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0) && (global.turning_dash2 = 0)
		{
			global.jumpingdm = 0;
			global.dash2_spark = 0
			global.dash2_jump = 0
		
			State_machine_switch_state(Fall_shoot);
		
			global.shoot = 1;
		    global.charging = 0;
		    shoot_timer += 1;
		
			audio_stop_sound(snd_player_spinjump);
			audio_stop_sound(snd_swordswoosh);
		}
		
		//shoot charging
		if (shoot) && (!shoot_pressed)
		&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0) && (limit = 0)
		&& (global.shoot_instacharge_upgrade == 0)
		{
			global.charging = 1;
		}

		if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
		&& (global.turning = 0)
		{
			with(obj_blast_effect)
			    {
			        if (global.charge_ready = 1)
			        {
						with(obj_player)
			            {
			                global.jumpingdm = 0;
							global.shoot = 1;
			                global.charge_shot = 1;
			                global.charging = 0;
							
							//double_jump = 0;
			                shoot_timer = 1;
							
							audio_stop_sound(snd_player_spinjump_shorter);
							
			                State_machine_switch_state(Fall_shoot);
			            }
			        }
					else if (global.charge_ready = 0) && (global.charging = 0)
					{
						with(obj_player)
						{
							global.jumpingdm = 0;
							global.shoot = 1;
							global.charging = 0;
							
							//double_jump = 0;
							shoot_timer = 1;
							
							audio_stop_sound(snd_player_spinjump_shorter);
							
							State_machine_switch_state(Fall_shoot);	
						}
					}
			    }

		}	
	}
	
	
	
	//hanging shooting
	with(object_player2_0_sprites)
	{
			if (global.hangAiming = 1)
			{
				with(obj_player)
				{
					if (state = Ledge_grab)
					{
						if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0) && (global.turning_dash2 = 0)
						{
						    global.shoot = 1;
						    global.charging = 0;
						    shoot_timer = 1;
						    State_machine_switch_state(Shoot_hang);
							
							//hang shooting sprites
							with(object_player2_0_sprites)
							{
								if (global.facingDir < 0)
								{
									if (global.aiming_forward > 0)
									{
										sprite_index = spr_hangshoot_right
									}
									else if (global.aiming_down > 0)
									{
										sprite_index = spr_hangshoot_right_down
									}
									else if (global.aiming_truedown > 0)
									{
										sprite_index = spr_hangshoot_right_Tdown
									}
									else if (global.aiming_up > 0)
									{
										sprite_index = spr_hangshoot_right_up
									}
									else if (global.aiming_trueup > 0)
									{
										sprite_index = spr_hangshoot_right_Tup
									}
								}
								else if (global.facingDir > 0)
								{
									if (global.aiming_forward > 0)
									{
										sprite_index = spr_hangshoot_left
									}
									else if (global.aiming_down > 0)
									{
										sprite_index = spr_hangshoot_left_down
									}
									else if (global.aiming_truedown > 0)
									{
										sprite_index = spr_hangshoot_left_Tdown
									}
									else if (global.aiming_up > 0)
									{
										sprite_index = spr_hangshoot_left_up
									}
									else if (global.aiming_trueup > 0)
									{
										sprite_index = spr_hangshoot_left_Tup
									}
								}	
							}
						}

						if (shoot) && (!shoot_pressed) && (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0)
						&& (global.shoot_instacharge_upgrade == 0)
						{
						    global.charging = 1;
						}

						if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
						&& (global.turning = 0)
						{
						    if (global.charge_ready = 1)
						    {
								with(obj_player)
						        {
						            global.shoot = 1;
						            global.charge_shot = 1;
						            global.charging = 0;
						            shoot_timer = 1;
						            State_machine_switch_state(Shoot_hang);
									
									//hang shooting sprites
									with(object_player2_0_sprites)
									{
										if (global.facingDir < 0)
										{
											if (global.aiming_forward > 0)
											{
												sprite_index = spr_hangshoot_right
											}
											else if (global.aiming_down > 0)
											{
												sprite_index = spr_hangshoot_right_down
											}
											else if (global.aiming_truedown > 0)
											{
												sprite_index = spr_hangshoot_right_Tdown
											}
											else if (global.aiming_up > 0)
											{
												sprite_index = spr_hangshoot_right_up
											}
											else if (global.aiming_trueup > 0)
											{
												sprite_index = spr_hangshoot_right_Tup
											}
										}
										else if (global.facingDir > 0)
										{
											if (global.aiming_forward > 0)
											{
												sprite_index = spr_hangshoot_left
											}
											else if (global.aiming_down > 0)
											{
												sprite_index = spr_hangshoot_left_down
											}
											else if (global.aiming_truedown > 0)
											{
												sprite_index = spr_hangshoot_left_Tdown
											}
											else if (global.aiming_up > 0)
											{
												sprite_index = spr_hangshoot_left_up
											}
											else if (global.aiming_trueup > 0)
											{
												sprite_index = spr_hangshoot_left_Tup
											}
										}	
									}
						        }
						    }
							else if (global.charge_ready = 0)
							{
								with(obj_player)
								{
									global.shoot = 1;
									global.charging = 0;
									shoot_timer = 1;
									State_machine_switch_state(Shoot_hang);	
									
									
									//hang shooting sprites
									with(object_player2_0_sprites)
									{
										if (global.facingDir < 0)
										{
											if (global.aiming_forward > 0)
											{
												sprite_index = spr_hangshoot_right
											}
											else if (global.aiming_down > 0)
											{
												sprite_index = spr_hangshoot_right_down
											}
											else if (global.aiming_truedown > 0)
											{
												sprite_index = spr_hangshoot_right_Tdown
											}
											else if (global.aiming_up > 0)
											{
												sprite_index = spr_hangshoot_right_up
											}
											else if (global.aiming_trueup > 0)
											{
												sprite_index = spr_hangshoot_right_Tup
											}
										}
										else if (global.facingDir > 0)
										{
											if (global.aiming_forward > 0)
											{
												sprite_index = spr_hangshoot_left
											}
											else if (global.aiming_down > 0)
											{
												sprite_index = spr_hangshoot_left_down
											}
											else if (global.aiming_truedown > 0)
											{
												sprite_index = spr_hangshoot_left_Tdown
											}
											else if (global.aiming_up > 0)
											{
												sprite_index = spr_hangshoot_left_up
											}
											else if (global.aiming_trueup > 0)
											{
												sprite_index = spr_hangshoot_left_Tup
											}
										}	
									}
								}
							}
						} 
					}
				}
			}
	}
	
	//crouch shooting
	if (state = Crouching)
	{
		if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.crouching == 1) && (global.turning <= 0)
		{
			State_machine_switch_state(Crouch_shoot);
			global.shoot = 1;
			global.charging = 0;
			shoot_timer += 1;
			
			stopper_bullet_creation = 0;
			limit = 0;
		}

		//charging code
		if (shoot) && (!shoot_pressed)
		&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0)
		&& (limit = 0)
		&& (global.shoot_instacharge_upgrade == 0)
		{
			global.charging = 1;
		}
		
		

		if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
		{
			with(obj_blast_effect)
			    {
			        if (global.charge_ready = 1)
			        {
			        with(obj_player)
			            {
			                global.shoot = 1;
			                global.charge_shot = 1;
			                global.charging = 0;
			                shoot_timer = 1;
			                State_machine_switch_state(Crouch_shoot);
			            }
			        }
					else if (global.charge_ready = 0)
					{
						with(obj_player)
						{
							global.shoot = 1;
							global.charging = 0;
							shoot_timer = 1;
							State_machine_switch_state(Crouch_shoot);	
						}
					}
			    }

		} 
	}
	
	//move shooting
	if (state = Move)
	{
		//shooting-turn off global.shoot = 1, when no charging or shooting
		if (!shoot_pressed)
		&& (global.shoot = 1)
		&& (global.charging = 0) && (global.charge_ready == 0) && (global.charge_shot == 0)
		{
			global.shoot = 0;
		}
	
		//normal shooting
		if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0)
		{
			global.shoot = 1;		
			global.charging = 0;
			shoot_timer = 1;
			
			stopper_bullet_creation = 0;
			limit = 0;
		}
		
		
		//charging code
		if (shoot) && (!shoot_pressed)
		&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0) && (limit = 0)
		&& (global.shoot_instacharge_upgrade == 0)
		{
			global.charging = 1;
		}


		if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot) && (limit = 0)
		&& (global.turning = 0)
		{
			with(obj_blast_effect)
			    {
			        if (global.charge_ready = 1)
			        {
						with(obj_player)
			            {
			                global.shoot = 1;
							
							global.charge_shot = 1;
			                global.charging = 0;
			                shoot_timer = 1;
			            }
			        }
					else if (global.charge_ready = 0) && (global.charging = 0)
					{
						with(obj_player)
						{
							global.shoot = 1;
							
							global.charging = 0;
							shoot_timer = 1;	
						}
					}
			    }

		} 	
	}
	
	
	
	//Idle shooting
	if (state = Idle) or (state = Idle_landing)
	{
		if (shoot_pressed) && (shoot) && (global.shoot = 0) && (global.turning = 0) && (global.turning_dash2 = 0)
		{
			global.shoot = 1;
			global.charging = 0;
			shoot_timer = 1;
			State_machine_switch_state(Shooting);
	
			with(object_player2_0_sprites)
			{
				image_index = 0	
			}
			
			stopper_bullet_creation = 0;
			limit = 0;
			
		}

		//charging code
		if (shoot) && (!shoot_pressed)
		&& (global.shoot = 0) && (global.upgrade_charge = 1) && (global.charging = 0) && (limit = 0)
		&& (global.shoot_instacharge_upgrade == 0)
		{
			global.charging = 1;
		}
		
		
		//change to from idle to idle shooting state 
		if (global.upgrade_charge = 1) && (global.shoot = 0) && (global.charging = 1) && (!shoot)
		&& (global.turning = 0)
		{
			with(obj_blast_effect)
			    {
			        if (global.charge_ready = 1)
			        {
						with(obj_player)
			            {
			                global.shoot = 1;
			                global.charge_shot = 1;
			                global.charging = 0;
			                shoot_timer = 1;
			                State_machine_switch_state(Shooting);
					
							with(object_player2_0_sprites)
							{
								image_index = 0	
							}
			            }
			        }
					else if (global.charge_ready = 0)
					{
						with(obj_player)
						{
							global.shoot = 1;
							global.charging = 0;
							shoot_timer = 1;
							State_machine_switch_state(Shooting);	
					
							with(object_player2_0_sprites)
							{
								image_index = 0	
							}
						}
					}
			
			    }

		} 
	}

}