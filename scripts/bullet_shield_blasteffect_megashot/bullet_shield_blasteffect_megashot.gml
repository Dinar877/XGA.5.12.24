function bullet_shield_blasteffect_megashot() {
	with(obj_player)
	{
	if (global.shoot = 1)
	{

		with(object_player2_0_sprites)
		{
		//standing
		    ///LEFT
		#region
			//left
			if (sprite_index = spr_stand_left_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_left_shield
					x = object_player2_0_sprites.x-17
			        y = object_player2_0_sprites.y-8
				}
			}
			else if (sprite_index = spr_stand_left_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_left_shield
					x = object_player2_0_sprites.x-17
			        y = object_player2_0_sprites.y-9
				}
			}
			else if (sprite_index = spr_stand_left_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_left_shield
					x = object_player2_0_sprites.x-16
			        y = object_player2_0_sprites.y-9
				}
			}
			else if (sprite_index = spr_stand_left_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_left_shield
					x = object_player2_0_sprites.x-15
			        y = object_player2_0_sprites.y-9
				}
			}
		
			//upleft
			if (sprite_index = spr_stand_upleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upleft_shield
					x = object_player2_0_sprites.x-13
			        y = object_player2_0_sprites.y-22
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upleft_shield
					x = object_player2_0_sprites.x-13
			        y = object_player2_0_sprites.y-23
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upleft_shield
					x = object_player2_0_sprites.x-12
			        y = object_player2_0_sprites.y-23
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upleft_shield
					x = object_player2_0_sprites.x-11
			        y = object_player2_0_sprites.y-23
				}
			}
		
			//T.upleft
			if (sprite_index = spr_stand_Trueupleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x-2
			        y = object_player2_0_sprites.y-28
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x-2
			        y = object_player2_0_sprites.y-29
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x-1
			        y = object_player2_0_sprites.y-29
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x
			        y = object_player2_0_sprites.y-29
				}
			}
		
		
			//downleft
			if (sprite_index = spr_stand_downleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downleft_shield
					x = object_player2_0_sprites.x-16
			        y = object_player2_0_sprites.y+5
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downleft_shield
					x = object_player2_0_sprites.x-16
			        y = object_player2_0_sprites.y+4
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downleft_shield
					x = object_player2_0_sprites.x-17
			        y = object_player2_0_sprites.y+4
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downleft_shield
					x = object_player2_0_sprites.x-18
			        y = object_player2_0_sprites.y+4
				}
			}
		#endregion
	
			//RIGHT
		#region
			//right
			if (sprite_index = spr_stand_right_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_right_shield
					x = object_player2_0_sprites.x+16
			        y = object_player2_0_sprites.y-8
				}
			}
			else if (sprite_index = spr_stand_right_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_right_shield
					x = object_player2_0_sprites.x+16
			        y = object_player2_0_sprites.y-9
				}
			}
			else if (sprite_index = spr_stand_right_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_right_shield
					x = object_player2_0_sprites.x+17
			        y = object_player2_0_sprites.y-9
				}
			}
			else if (sprite_index = spr_stand_right_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_right_shield
					x = object_player2_0_sprites.x-18
			        y = object_player2_0_sprites.y-9
				}
			}
		
			//upright
			if (sprite_index = spr_stand_upright_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upright_shield
					x = object_player2_0_sprites.x+15
			        y = object_player2_0_sprites.y-25
				}
			}
			else if (sprite_index = spr_stand_upright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upright_shield
					x = object_player2_0_sprites.x+15
			        y = object_player2_0_sprites.y-26
				}
			}
			else if (sprite_index = spr_stand_upright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upright_shield
					x = object_player2_0_sprites.x+14
			        y = object_player2_0_sprites.y-26
				}
			}
			else if (sprite_index = spr_stand_upright_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_upright_shield
					x = object_player2_0_sprites.x+13
			        y = object_player2_0_sprites.y-26
				}
			}
		
			//T.upleft
			if (sprite_index = spr_stand_Trueupright_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x+4
			        y = object_player2_0_sprites.y-28
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x+4
			        y = object_player2_0_sprites.y-29
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x+3
			        y = object_player2_0_sprites.y-29
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_up_shield
					x = object_player2_0_sprites.x+2
			        y = object_player2_0_sprites.y-29
				}
			}
		
		
			//downleft
			if (sprite_index = spr_stand_downright_2) && ((round(image_index)) <= 12)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downright_shield
					x = object_player2_0_sprites.x+16
			        y = object_player2_0_sprites.y+6
				}
			}
			else if (sprite_index = spr_stand_downright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downright_shield
					x = object_player2_0_sprites.x+16
			        y = object_player2_0_sprites.y+5
				}
			}
			else if (sprite_index = spr_stand_downright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downright_shield
					x = object_player2_0_sprites.x+15
			        y = object_player2_0_sprites.y+5
				}
			}
			else if (sprite_index = spr_stand_downright_2) && ((round(image_index)) >= 15)
			{
				with(obj_megablast_effect)
		        {
					sprite_index = spr_megashot_downright_shield
					x = object_player2_0_sprites.x+14
			        y = object_player2_0_sprites.y+5
				}
			}
		#endregion

			////CROUCH+JUMP
		#region
			//crouching
		
		        //forward
		    if sprite_index = spr_crouch_left
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
					x = obj_player.x-16;
		            y = obj_player.y-1;
		        } 
		    }
		    if sprite_index = spr_crouch_right
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
					x = obj_player.x+17;
		            y = obj_player.y-1;
		        } 
		    }
    
		        //up
		    if sprite_index = spr_crouch_upleft
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
					x = obj_player.x-12;
		            y = obj_player.y-16;
		        } 
		    }
		    if sprite_index = spr_crouch_upright
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
					x = obj_player.x+12;
		            y = obj_player.y-16;
		        } 
		    }
    
    
		        //down
		    if sprite_index = spr_crouch_downleft
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
					x = obj_player.x-15;
		            y = obj_player.y+11;
		        } 
		    }
		    if sprite_index = spr_crouch_downright
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
					x = obj_player.x+16;
		            y = obj_player.y+12;
		        } 
		    }
    
    
    
		        //trueup
		    if sprite_index = spr_crouch_trueupleft
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x-2;
		            y = obj_player.y-21;
		        } 
		    }
		    if sprite_index = spr_crouch_trueupright
		    {
				with(obj_megablast_effect)
		        {
	            
					sprite_index = spr_megashot_up_shield
					x = obj_player.x+2;
		            y = obj_player.y-21;
		        } 
		    }
    
		        //truedown
		    if sprite_index = spr_crouch_Truedown_left
		    {
				with(obj_megablast_effect)
		        {
		           sprite_index = spr_megashot_down_shield
					x = obj_player.x-4;
		            y = obj_player.y+17;
		        } 
		    }
		    if sprite_index = spr_crouch_Truedown_right
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
					x = obj_player.x+5;
		            y = obj_player.y+17;
		        } 
		    }


		/////////////////////////////////////////////////////////////////////////////////////////////
		//jumping
		    //forward
		    if (sprite_index = spr_jump_left)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
					x = obj_player.x-18;
		            y = obj_player.y-4;
		        } 
		    }
		    if (sprite_index = spr_jump_right)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
					x = obj_player.x+17;
		            y = obj_player.y-5;
		        } 
		    }
    
		    //up
		    if (sprite_index = spr_jump_up_left)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
					x = obj_player.x-15;
		            y = obj_player.y-20;
		        } 
		    }
		    if (sprite_index = spr_jump_up_right)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
					x = obj_player.x+12;
		            y = obj_player.y-20;
		        } 
		    }

		    //down
		    if (sprite_index = spr_jump_down_lefrt)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
					x = obj_player.x-17;
		            y = obj_player.y+8;
		        } 
		    }
		    if (sprite_index = spr_jump_down_right)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
					x = obj_player.x+17;
		            y = obj_player.y+8;
		        } 
		    }
    
		    //trueup
		    if (sprite_index = spr_jump_trueup_left)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x-4;
		            y = obj_player.y-24;
		        } 
		    }
		    if (sprite_index = spr_jump_trueup_right)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x+2;
		            y = obj_player.y-25;
		        } 
		    }

    
		    //truedown
		    if (sprite_index = spr_jump_truedown_left)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
					x = obj_player.x-6;
		            y = obj_player.y+14;
		        } 
		    }
		    if (sprite_index = spr_jump_truedown_right)
		    {
				with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
					x = obj_player.x+5;
		            y = obj_player.y+13;
		        } 
		    }
		#endregion
		

		    //left
		    if sprite_index = spr_shoot_left && (image_index < 1)
		    {
		        with(obj_megablast_effect)
		        {
	            
		            sprite_index = spr_megashot_left_shield
					x = object_player2_0_sprites.x-17
		            y = object_player2_0_sprites.y-8
		        }    
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 1) && (image_index < 2)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
		            x = object_player2_0_sprites.x-17
		            y = object_player2_0_sprites.y-9
		        }    
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 2) && (image_index < 3)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
		            x = object_player2_0_sprites.x-16
		            y = object_player2_0_sprites.y-9
		        }    
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 3)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
		            x = object_player2_0_sprites.x-15
		            y = object_player2_0_sprites.y-9
		        }    
		    }
	
	
			//right
			if sprite_index = spr_shoot_right && (image_index < 1)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = object_player2_0_sprites.x+16
		            y = object_player2_0_sprites.y-8
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 1) && (image_index < 2)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = object_player2_0_sprites.x+16
		            y = object_player2_0_sprites.y-9
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 2) && (image_index < 3)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = object_player2_0_sprites.x+15
		            y = object_player2_0_sprites.y-9
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 3)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = object_player2_0_sprites.x+14
		            y = object_player2_0_sprites.y-9
		        }    
		    }
	
	
		    //aiming trueup
		    if sprite_index = spr_shoot_trueup_left
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x-3
		            y = obj_player.y-27
		        }    
		    }
		    if sprite_index = spr_shoot_trueup_right
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x+1
		            y = obj_player.y-27
		        }    
		    }
		    //aiming up
		    if sprite_index = spr_shoot_upleft
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
		            x = obj_player.x-14
		            y = obj_player.y-21
		        }    
		    }
		    if sprite_index = spr_shoot_upright
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
		            x = obj_player.x+12
		            y = obj_player.y-24
		        }    
		    }
		    //aiming down
		    if sprite_index = spr_shoot_downleft
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
		            x = obj_player.x-16
		            y = obj_player.y+5
		        }    
		    }
		    if sprite_index = spr_shoot_downright
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
		            x = obj_player.x+16
		            y = obj_player.y+6
		        }    
		    }
		    //aiming Truedown
		    if sprite_index = spr_shoot_Truedown_left
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x-5;
		            y = obj_player.y+15;
		        }    
		    }
		    if sprite_index = spr_shoot_Truedown_right
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x+5;
		            y = obj_player.y+15;
		        }    
		    }

		/////////////////////////////////////////////////////
    
		//running
		    //left run shoot
		    if sprite_index = spr_run_left1 && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
					x = obj_player.x-21
		            y = obj_player.y-7
		        }    
		    }
		    if sprite_index = spr_run_left1 && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
					x = obj_player.x-22
		            y = obj_player.y-8
		        }    
		    }
		    if sprite_index = spr_run_left1 && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
					x = obj_player.x-19
		            y = obj_player.y-8
		        }    
		    }
		    //right run shoot
		    if sprite_index = spr_run_right && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
					x = obj_player.x+19
		            y = obj_player.y-6
		        }    
		    }
		    if sprite_index = spr_run_right && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
					x = obj_player.x+20
		            y = obj_player.y-7
		        }    
		    }
		    if sprite_index = spr_run_right && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
					x = obj_player.x+18
		            y = obj_player.y-7
		        }    
		    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
		    //upleft run shoot
		    if sprite_index = spr_run_upleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
					x = obj_player.x-16
		            y = obj_player.y-22
		        }    
		    }
		    if sprite_index = spr_run_upleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
					x = obj_player.x-17
		            y = obj_player.y-23
		        }    
		    }
		    if sprite_index = spr_run_upleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
					x = obj_player.x-15
		            y = obj_player.y-23
		        }    
		    }
		    //upright run shoot
		    if sprite_index = spr_run_upright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
					x = obj_player.x+15
		            y = obj_player.y-23
		        }    
		    }
		    if sprite_index = spr_run_upright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
					x = obj_player.x+16
		            y = obj_player.y-24
		        }    
		    }
		    if sprite_index = spr_run_upright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
					x = obj_player.x+14
		            y = obj_player.y-24
		        }    
		    }
    
    
    
    
    
    
    
    
    
    
    
		    //trueupleft run shoot
		    if sprite_index = spr_run_trueupleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x-2
		            y = obj_player.y-28
		        }    
		    }
		    if sprite_index = spr_run_trueupleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x-3
		            y = obj_player.y-29
		        }    
		    }
		    if sprite_index = spr_run_trueupleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x-1
		            y = obj_player.y-29
		        }    
		    }
		    //trueupright run shoot
		    if sprite_index = spr_run_trueupright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x+4
		            y = obj_player.y-28
		        }    
		    }
		    if sprite_index = spr_run_trueupright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x+5
		            y = obj_player.y-29
		        }    
		    }
		    if sprite_index = spr_run_trueupright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
					x = obj_player.x+3
		            y = obj_player.y-29
		        }    
		    }
    
    
    
    
    
    
    
    
		    //downleft run shoot
		    if sprite_index = spr_run_downleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
					x = obj_player.x-19
		            y = obj_player.y+5
		        }    
		    }
		    if sprite_index = spr_run_downleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
					x = obj_player.x-20
		            y = obj_player.y+4
		        }    
		    }
		    if sprite_index = spr_run_downleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
					x = obj_player.x-18
		            y = obj_player.y+4
		        }    
		    }
		    //downright run shoot
		    if sprite_index = spr_run_downright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
					x = obj_player.x+19
		            y = obj_player.y+6
		        }    
		    }
		    if sprite_index = spr_run_downright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
					x = obj_player.x+20
		            y = obj_player.y+5
		        }    
		    }
		    if sprite_index = spr_run_downright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
					x = obj_player.x+18
		            y = obj_player.y+5
		        }    
		    }
    
    
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		//crouching
		        //forward
		    if sprite_index = spr_crouchshoot_left
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
		            x = obj_player.x-16;
		            y = obj_player.y-1;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_right
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = obj_player.x+17;
		            y = obj_player.y-1;
		        } 
		    }
    
		        //up
		    if sprite_index = spr_crouchshoot_upleft
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
		            x = obj_player.x-12;
		            y = obj_player.y-16;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_upright
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
		            x = obj_player.x+12;
		            y = obj_player.y-16;
		        } 
		    }
    
    
		        //down
		    if sprite_index = spr_crouchshoot_downleft
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
		            x = obj_player.x-15;
		            y = obj_player.y+11;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_downright
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
		            x = obj_player.x+16;
		            y = obj_player.y+12;
		        } 
		    }
    
    
    
		        //trueup
		    if sprite_index = spr_crouchshoot_trueupleft
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x-2;
		            y = obj_player.y-21;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_trueupright
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x+2;
		            y = obj_player.y-21;
		        } 
		    }
    
		        //truedown
		    if sprite_index = spr_shoot_crouch_Truedown_left
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x-4;
		            y = obj_player.y+17;
		        } 
		    }
		    if sprite_index = spr_shoot_crouch_Truedown_right
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x+5;
		            y = obj_player.y+17;
		        } 
		    }


		/////////////////////////////////////////////////////////////////////////////////////////////
		//jumping
		    //forward
		    if (sprite_index = spr_shootjump_left)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_left_shield
		            x = obj_player.x-18;
		            y = obj_player.y-4;
		        } 
		    }
		    if (sprite_index = spr_shootjump_right)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_right_shield
		            x = obj_player.x+17;
		            y = obj_player.y-5;
		        } 
		    }
    
		    //up
		    if (sprite_index = spr_shootjump_upleft)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upleft_shield
		            x = obj_player.x-15;
		            y = obj_player.y-20;
		        } 
		    }
		    if (sprite_index = spr_shootjump_upright)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_upright_shield
		            x = obj_player.x+12;
		            y = obj_player.y-20;
		        } 
		    }

		    //down
		    if (sprite_index = spr_shootjump_downleft)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downleft_shield
		            x = obj_player.x-17;
		            y = obj_player.y+8;
		        } 
		    }
		    if (sprite_index = spr_shootjump_downright)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_downright_shield
		            x = obj_player.x+17;
		            y = obj_player.y+8;
		        } 
		    }
    
		    //trueup
		    if (sprite_index = spr_shootjump_trueupleft)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x-4;
		            y = obj_player.y-24;
		        } 
		    }
		    if (sprite_index = spr_shootjump_trueupright)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_up_shield
		            x = obj_player.x+2;
		            y = obj_player.y-25;
		        } 
		    }

    
		    //truedown
		    if (sprite_index = spr_shoot_jump_Truedown_left)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x-6;
		            y = obj_player.y+14;
		        } 
		    }
		    if (sprite_index = spr_shoot_jump_Truedown_right)
		    {
		    with(obj_megablast_effect)
		        {
		            sprite_index = spr_megashot_down_shield
		            x = obj_player.x+5;
		            y = obj_player.y+13;
		        } 
		    }

		///////////////////////////////////////////////////////////////////////////////////////////Dashing2.0
	#region
			if (sprite_index = spr_player_dash2_beginL)
		    {
			    if (image_index = 1) or (image_index = image_number-1)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x-17;
			            y = obj_player.y-4;
			        } 
			    }
				if (image_index = 2) or (image_index = image_number-2)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x-7;
			            y = obj_player.y-1;
			        } 
			    }
				if (image_index = 3) or (image_index = image_number-3)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x-33;
			            y = obj_player.y+5;
			        } 
			    }
				if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x-33;
			            y = obj_player.y+6;
			        } 
			    }
				if (image_index = 6) or (image_index = 7)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x-33;
			            y = obj_player.y+7;
			        } 
			    }
			}
	
	
	
		    if (sprite_index = spr_player_dash2_beginR1)
		    {
			    if (image_index = 1) or (image_index = image_number-1)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x+19;
			            y = obj_player.y-4;
			        } 
			    }
				if (image_index = 2) or (image_index = image_number-2)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x+30;
			            y = obj_player.y;
			        } 
			    }
				if (image_index = 3) or (image_index = image_number-3)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x+33;
			            y = obj_player.y+5;
			        } 
			    }
				if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x+33;
			            y = obj_player.y+6;
			        } 
			    }
				if (image_index = 6) or (image_index = 7)
				{
				with(obj_megablast_effect)
			        {
		            
			            x = obj_player.x+33;
			            y = obj_player.y+7;
			        } 
			    }
			}
	
	#endregion
		/////////////////////////////////////////////////////////HANG SHOOT LEFT
					if (sprite_index == spr_hangshoot_left)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_left_shield
				            x = obj_player.x+32;
				            y = obj_player.y-14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_down)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_downright_shield
				            x = obj_player.x+30;
				            y = obj_player.y+3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_Tdown)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_down_shield
				            x = obj_player.x+14;
				            y = obj_player.y+12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_Tup)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_up_shield
				            x = obj_player.x+7;
				            y = obj_player.y-32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_up)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_upright_shield
				            x = obj_player.x+22;
				            y = obj_player.y-31;
				        } 
					}
	
	
		///////////////////////////////////////HANG SHOOT RIGHT
					if (sprite_index == spr_hangshoot_right)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_right_shield
				            x = obj_player.x-33;
				            y = obj_player.y-14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_down)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_downleft_shield
				            x = obj_player.x-32;
				            y = obj_player.y+3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_Tdown)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_down_shield
				            x = obj_player.x-15;
				            y = obj_player.y+12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_Tup)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_up_shield
				            x = obj_player.x-7;
				            y = obj_player.y-32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_up)
					{
						with(obj_megablast_effect)
				        {
				            sprite_index = spr_megashot_upleft_shield
				            x = obj_player.x-23;
				            y = obj_player.y-31;
				        } 
					}


		}
	
	

	}


	fully_charged = 0;
	timer_charging = 0;




	}



}
