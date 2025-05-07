function blast_effect_sprites_init() {
	with(obj_player)
	{
		if (global.shoot = 1)
		{

			with(object_player2_0_sprites)
			{
				//////////////////////////////////////////////////////////////
				///STANDING
				
				#region
					//left
				    if sprite_index = spr_shoot_left && (image_index < 1)
				    {
				        with(obj_blast_effect)
				        {
	            
				            sprite_index = spr_shot_left
							x = object_player2_0_sprites.x-17
				            y = object_player2_0_sprites.y-8
				        }    
				    }
					else if sprite_index = spr_shoot_left && (image_index >= 1) && (image_index < 2)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
				            x = object_player2_0_sprites.x-17
				            y = object_player2_0_sprites.y-9
				        }    
				    }
					else if sprite_index = spr_shoot_left && (image_index >= 2) && (image_index < 3)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
				            x = object_player2_0_sprites.x-16
				            y = object_player2_0_sprites.y-9
				        }    
				    }
					else if sprite_index = spr_shoot_left && (image_index >= 3)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
				            x = object_player2_0_sprites.x-15
				            y = object_player2_0_sprites.y-9
				        }    
				    }
	
	
					//right
					if sprite_index = spr_shoot_right && (image_index < 1)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = object_player2_0_sprites.x+16
				            y = object_player2_0_sprites.y-8
				        }    
				    }
					else if sprite_index = spr_shoot_right && (image_index >= 1) && (image_index < 2)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = object_player2_0_sprites.x+16
				            y = object_player2_0_sprites.y-9
				        }    
				    }
					else if sprite_index = spr_shoot_right && (image_index >= 2) && (image_index < 3)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = object_player2_0_sprites.x+15
				            y = object_player2_0_sprites.y-9
				        }    
				    }
					else if sprite_index = spr_shoot_right && (image_index >= 3)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = object_player2_0_sprites.x+14
				            y = object_player2_0_sprites.y-9
				        }    
				    }
	
	
				    //aiming trueup
				    if sprite_index = spr_shoot_trueup_left
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x-3
				            y = obj_player.y-27
				        }    
				    }
				    if sprite_index = spr_shoot_trueup_right
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x+1
				            y = obj_player.y-27
				        }    
				    }
				    //aiming up
				    if sprite_index = spr_shoot_upleft
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
				            x = obj_player.x-13 //+1
				            y = obj_player.y-22 //-1
				        }    
				    }
				    if sprite_index = spr_shoot_upright
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
				            x = obj_player.x+12
				            y = obj_player.y-22 //+2
				        }    
				    }
				    //aiming down
				    if sprite_index = spr_shoot_downleft
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
				            x = obj_player.x-16
				            y = obj_player.y+5
				        }    
				    }
				    if sprite_index = spr_shoot_downright
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
				            x = obj_player.x+16
				            y = obj_player.y+6
				        }    
				    }
				    //aiming Truedown
				    if sprite_index = spr_shoot_Truedown_left
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x-5;
				            y = obj_player.y+15;
				        }    
				    }
				    if sprite_index = spr_shoot_Truedown_right
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x+5;
				            y = obj_player.y+15;
				        }    
				    }
				#endregion

				/////////////////////////////////////////////////////
    
				//running
				#region
				    //left run shoot
				    if sprite_index = spr_run_left1 && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
							x = obj_player.x-21
				            y = obj_player.y-7
				        }    
				    }
				    if sprite_index = spr_run_left1 && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
							x = obj_player.x-22
				            y = obj_player.y-8
				        }    
				    }
				    if sprite_index = spr_run_left1 && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
							x = obj_player.x-19
				            y = obj_player.y-8
				        }    
				    }
				    //right run shoot
				    if sprite_index = spr_run_right && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
							x = obj_player.x+20 //+1
				            y = obj_player.y-6
				        }    
				    }
				    if sprite_index = spr_run_right && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
							x = obj_player.x+21 //+1
				            y = obj_player.y-7
				        }    
				    }
				    if sprite_index = spr_run_right && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
							x = obj_player.x+19 //+1
				            y = obj_player.y-7
				        }    
				    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
				    //upleft run shoot
				    if sprite_index = spr_run_upleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
							x = obj_player.x-17 //-1
				            y = obj_player.y-23 //-1
				        }    
				    }
				    if sprite_index = spr_run_upleft && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
							x = obj_player.x-18 //-1
				            y = obj_player.y-24 //-1
				        }    
				    }
				    if sprite_index = spr_run_upleft && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
							x = obj_player.x-16 //-1
				            y = obj_player.y-24 //-1
				        }    
				    }
				    //upright run shoot
				    if sprite_index = spr_run_upright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
							x = obj_player.x+15
				            y = obj_player.y-23
				        }    
				    }
				    if sprite_index = spr_run_upright && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
							x = obj_player.x+16
				            y = obj_player.y-24
				        }    
				    }
				    if sprite_index = spr_run_upright && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
							x = obj_player.x+14
				            y = obj_player.y-24
				        }    
				    }
    
    
    
    
    
    
    
    
    
    
    
				    //trueupleft run shoot
				    if sprite_index = spr_run_trueupleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x-2
				            y = obj_player.y-28
				        }    
				    }
				    if sprite_index = spr_run_trueupleft && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x-3
				            y = obj_player.y-29
				        }    
				    }
				    if sprite_index = spr_run_trueupleft && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x-1
				            y = obj_player.y-29
				        }    
				    }
				    //trueupright run shoot
				    if sprite_index = spr_run_trueupright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x+4
				            y = obj_player.y-28
				        }    
				    }
				    if sprite_index = spr_run_trueupright && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x+5
				            y = obj_player.y-29
				        }    
				    }
				    if sprite_index = spr_run_trueupright && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
							x = obj_player.x+3
				            y = obj_player.y-29
				        }    
				    }
    
    
    
    
    
    
    
    
				    //downleft run shoot
				    if sprite_index = spr_run_downleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
							x = obj_player.x-20 //-1
				            y = obj_player.y+5
				        }    
				    }
				    if sprite_index = spr_run_downleft && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
							x = obj_player.x-21 //-1
				            y = obj_player.y+4
				        }    
				    }
				    if sprite_index = spr_run_downleft && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
							x = obj_player.x-19 //-1
				            y = obj_player.y+4
				        }    
				    }
				    //downright run shoot
				    if sprite_index = spr_run_downright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
							x = obj_player.x+20 //+1
				            y = obj_player.y+7 //+1
				        }    
				    }
				    if sprite_index = spr_run_downright && (3 <=image_index && image_index< 6)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
							x = obj_player.x+21 //+1
				            y = obj_player.y+6 //+1
				        }    
				    }
				    if sprite_index = spr_run_downright && (9 <=image_index && image_index< 12)
				    {
				        with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
							x = obj_player.x+19 //+1
				            y = obj_player.y+6 //+1
				        }    
				    }
				#endregion
    
				//////////////////////////////////////////////////////////////////////////////////////////////////////////////

				//crouching
				#region
				        //forward
				    if sprite_index = spr_crouchshoot_left
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
				            x = obj_player.x-16;
				            y = obj_player.y-2; //-1
				        } 
				    }
				    if sprite_index = spr_crouchshoot_right
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = obj_player.x+17;
				            y = obj_player.y-2; //-1
				        } 
				    }
    
				        //up
				    if sprite_index = spr_crouchshoot_upleft
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
				            x = obj_player.x-12;
				            y = obj_player.y-17; //-1
				        } 
				    }
				    if sprite_index = spr_crouchshoot_upright
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
				            x = obj_player.x+12;
				            y = obj_player.y-17; //-1
				        } 
				    }
    
    
				        //down
				    if sprite_index = spr_crouchshoot_downleft
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
				            x = obj_player.x-15;
				            y = obj_player.y+10; //-1
				        } 
				    }
				    if sprite_index = spr_crouchshoot_downright
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
				            x = obj_player.x+17; //+1
				            y = obj_player.y+11; //-1
				        } 
				    }
    
    
    
				        //trueup
				    if sprite_index = spr_crouchshoot_trueupleft
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x-2;
				            y = obj_player.y-21;
				        } 
				    }
				    if sprite_index = spr_crouchshoot_trueupright
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x+2;
				            y = obj_player.y-21;
				        } 
				    }
    
				        //truedown
				    if sprite_index = spr_shoot_crouch_Truedown_left
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x-4;
				            y = obj_player.y+16; //-1
				        } 
				    }
				    if sprite_index = spr_shoot_crouch_Truedown_right
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x+5;
				            y = obj_player.y+16; //-1
				        } 
				    }
				#endregion


				/////////////////////////////////////////////////////////////////////////////////////////////
				//jumping
				#region
				    //forward
				    if (sprite_index = spr_shootjump_left)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_left
				            x = obj_player.x-18;
				            y = obj_player.y-4;
				        } 
				    }
				    if (sprite_index = spr_shootjump_right)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_right
				            x = obj_player.x+17;
				            y = obj_player.y-5;
				        } 
				    }
    
				    //up
				    if (sprite_index = spr_shootjump_upleft)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upleft
				            x = obj_player.x-14; //+1
				            y = obj_player.y-19; //+1
				        } 
				    }
				    if (sprite_index = spr_shootjump_upright)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_upright
				            x = obj_player.x+12;
				            y = obj_player.y-20;
				        } 
				    }

				    //down
				    if (sprite_index = spr_shootjump_downleft)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_downleft
				            x = obj_player.x-17;
				            y = obj_player.y+8;
				        } 
				    }
				    if (sprite_index = spr_shootjump_downright)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_downright
				            x = obj_player.x+17;
				            y = obj_player.y+8;
				        } 
				    }
    
				    //trueup
				    if (sprite_index = spr_shootjump_trueupleft)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x-4;
				            y = obj_player.y-24;
				        } 
				    }
				    if (sprite_index = spr_shootjump_trueupright)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_up
				            x = obj_player.x+2;
				            y = obj_player.y-25;
				        } 
				    }

    
				    //truedown
				    if (sprite_index = spr_shoot_jump_Truedown_left)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x-6;
				            y = obj_player.y+14;
				        } 
				    }
				    if (sprite_index = spr_shoot_jump_Truedown_right)
				    {
				    with(obj_blast_effect)
				        {
				            sprite_index = spr_shot_down
				            x = obj_player.x+5;
				            y = obj_player.y+13;
				        } 
				    }

				#endregion
			
				/////////////////////////////////////////////////////////HANG SHOOT LEFT
				#region
							if (sprite_index == spr_hangshoot_left)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_right
						            x = obj_player.x+32;
						            y = obj_player.y-14;
						        } 
							}
							else if (sprite_index == spr_hangshoot_left_down)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_downright
						            x = obj_player.x+30;
						            y = obj_player.y+3;
						        } 
							}
							else if (sprite_index == spr_hangshoot_left_Tdown)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_down
						            x = obj_player.x+14;
						            y = obj_player.y+12;
						        } 
							}
							else if (sprite_index == spr_hangshoot_left_Tup)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_up
						            x = obj_player.x+7;
						            y = obj_player.y-32;
						        } 
							}
							else if (sprite_index == spr_hangshoot_left_up)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_upright
						            x = obj_player.x+22;
						            y = obj_player.y-31;
						        } 
							}
							
							
							
							
							
							//hangshoot idle
							if (sprite_index == spr_hangshoot_idle_left)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_right
						            x = obj_player.x+32;
						            y = obj_player.y-14;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_left_down)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_downright
						            x = obj_player.x+30;
						            y = obj_player.y+3;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_left_Tdown)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_down
						            x = obj_player.x+14;
						            y = obj_player.y+12;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_left_Tup)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_up
						            x = obj_player.x+7;
						            y = obj_player.y-32;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_left_up)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_upright
						            x = obj_player.x+22;
						            y = obj_player.y-31;
						        } 
							}
	
	
				///////////////////////////////////////HANG SHOOT RIGHT
							if (sprite_index == spr_hangshoot_right)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_left
						            x = obj_player.x-33;
						            y = obj_player.y-14;
						        } 
							}
							else if (sprite_index == spr_hangshoot_right_down)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_downleft
						            x = obj_player.x-32;
						            y = obj_player.y+3;
						        } 
							}
							else if (sprite_index == spr_hangshoot_right_Tdown)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_down
						            x = obj_player.x-15;
						            y = obj_player.y+12;
						        } 
							}
							else if (sprite_index == spr_hangshoot_right_Tup)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_up
						            x = obj_player.x-7;
						            y = obj_player.y-32;
						        } 
							}
							else if (sprite_index == spr_hangshoot_right_up)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_upleft
						            x = obj_player.x-23;
						            y = obj_player.y-31;
						        } 
							}
							
							
							
							
							//hangshoot idle
							if (sprite_index == spr_hangshoot_idle_right)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_left
						            x = obj_player.x-33;
						            y = obj_player.y-14;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_right_down)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_downleft
						            x = obj_player.x-32;
						            y = obj_player.y+3;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_right_Tdown)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_down
						            x = obj_player.x-15;
						            y = obj_player.y+12;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_right_Tup)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_up
						            x = obj_player.x-7;
						            y = obj_player.y-32;
						        } 
							}
							else if (sprite_index == spr_hangshoot_idle_right_up)
							{
								with(obj_blast_effect)
						        {
						            sprite_index = spr_shot_upleft
						            x = obj_player.x-23;
						            y = obj_player.y-31;
						        } 
							}

					#endregion
			}
	

		}


		fully_charged = 0;
		timer_charging = 0;




		}



}
