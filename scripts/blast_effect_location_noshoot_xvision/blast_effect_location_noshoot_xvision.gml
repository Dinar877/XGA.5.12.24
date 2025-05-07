function blast_effect_location_noshoot_xvision() {
	with(object_player2_0_sprites)
	{
			////standing
		
			///LEFT
			#region
			//left
			if (sprite_index = spr_stand_left_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -17
			        yother = -8
				}
			}
			else if (sprite_index = spr_stand_left_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -17
			        yother = -9
				}
			}
			else if (sprite_index = spr_stand_left_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -16
			        yother = -9
				}
			}
			else if (sprite_index = spr_stand_left_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -15
			        yother = -9
				}
			}
		
			//upleft
			if (sprite_index = spr_stand_upleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -13
			        yother = -22
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -13
			        yother = -23
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -12
			        yother = -23
				}
			}
			else if (sprite_index = spr_stand_upleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -11
			        yother = -23
				}
			}
		
			//T.upleft
			if (sprite_index = spr_stand_Trueupleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -3
			        yother = -27
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -3
			        yother = -28
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -2
			        yother = -28
				}
			}
			else if (sprite_index = spr_stand_Trueupleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -1
			        yother = -28
				}
			}
		
		
			//downleft
			if (sprite_index = spr_stand_downleft_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -16
			        yother = +5
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -16
			        yother = +4
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -17
			        yother = +4
				}
			}
			else if (sprite_index = spr_stand_downleft_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -18
			        yother = +4
				}
			}
		#endregion
	
			//RIGHT
			#region
			//right
			if (sprite_index = spr_stand_right_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +16
			        yother = -8
				}
			}
			else if (sprite_index = spr_stand_right_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +16
			        yother = -9
				}
			}
			else if (sprite_index = spr_stand_right_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +15
			        yother = -9
				}
			}
			else if (sprite_index = spr_stand_right_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +14
			        yother = -9
				}
			}
		
			//upright
			if (sprite_index = spr_stand_upright_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +15
			        yother = -25
				}
			}
			else if (sprite_index = spr_stand_upright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +15
			        yother = -26
				}
			}
			else if (sprite_index = spr_stand_upright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +14
			        yother = -26
				}
			}
			else if (sprite_index = spr_stand_upright_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +13
			        yother = -26
				}
			}
		
			//T.upleft
			if (sprite_index = spr_stand_Trueupright_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +1
			        yother = -27
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +1
			        yother = -28
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +0
			        yother = -28
				}
			}
			else if (sprite_index = spr_stand_Trueupright_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = -1
			        yother = -28
				}
			}
		
		
			//downleft
			if (sprite_index = spr_stand_downright_2) && ((round(image_index)) <= 12)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +16
			        yother = +6
				}
			}
			else if (sprite_index = spr_stand_downright_2) && (((round(image_index)) == 13) or ((round(image_index)) == 24))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +16
			        yother = +5
				}
			}
			else if (sprite_index = spr_stand_downright_2) && (((round(image_index)) == 14) or ((round(image_index)) == 23))
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +15
			        yother = +5
				}
			}
			else if (sprite_index = spr_stand_downright_2) && ((round(image_index)) >= 15)
			{
				with(obj_darkness_effect_xvision)
		        {
					xother = +14
			        yother = +5
				}
			}
		#endregion

			////CROUCH+JUMP
		#region
			//crouching
		
		        //forward
		    if sprite_index = spr_crouch_left
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -16;
		            yother = -1;
		        } 
		    }
		    if sprite_index = spr_crouch_right
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +17;
		            yother = -1;
		        } 
		    }
    
		        //up
		    if sprite_index = spr_crouch_upleft
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -12;
		            yother = -16;
		        } 
		    }
		    if sprite_index = spr_crouch_upright
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +12;
		            yother = -16;
		        } 
		    }
    
    
		        //down
		    if sprite_index = spr_crouch_downleft
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -15;
		            yother = +11;
		        } 
		    }
		    if sprite_index = spr_crouch_downright
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +16;
		            yother = +12;
		        } 
		    }
    
    
    
		        //trueup
		    if sprite_index = spr_crouch_trueupleft
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -2;
		            yother = -21;
		        } 
		    }
		    if sprite_index = spr_crouch_trueupright
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +2;
		            yother = -21;
		        } 
		    }
    
		        //truedown
		    if sprite_index = spr_crouch_Truedown_left
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -4;
		            yother = +17;
		        } 
		    }
		    if sprite_index = spr_crouch_Truedown_right
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +5;
		            yother = +17;
		        } 
		    }


		/////////////////////////////////////////////////////////////////////////////////////////////
		//jumping
		    //forward
		    if (sprite_index = spr_jump_left)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -18;
		            yother = -4;
		        } 
		    }
		    if (sprite_index = spr_jump_right)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +17;
		            yother = -5;
		        } 
		    }
    
		    //up
		    if (sprite_index = spr_jump_up_left)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -15;
		            yother = -20;
		        } 
		    }
		    if (sprite_index = spr_jump_up_right)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +12;
		            yother = -20;
		        } 
		    }

		    //down
		    if (sprite_index = spr_jump_down_lefrt)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -17;
		            yother = +8;
		        } 
		    }
		    if (sprite_index = spr_jump_down_right)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +17;
		            yother = +8;
		        } 
		    }
    
		    //trueup
		    if (sprite_index = spr_jump_trueup_left)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -4;
		            yother = -24;
		        } 
		    }
		    if (sprite_index = spr_jump_trueup_right)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +2;
		            yother = -25;
		        } 
		    }

    
		    //truedown
		    if (sprite_index = spr_jump_truedown_left)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = -6;
		            yother = +14;
		        } 
		    }
		    if (sprite_index = spr_jump_truedown_right)
		    {
				with(obj_darkness_effect_xvision)
		        {
		            xother = +5;
		            yother = +13;
		        } 
		    }
		#endregion
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		    //left
		    if sprite_index = spr_shoot_left && (image_index < 1)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -17
		            yother = -8
		        }    
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 1) && (image_index < 2)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -17
		            yother = -9
		        }    
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 2) && (image_index < 3)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -16
		            yother = -9
		        }   
		    }
			else if sprite_index = spr_shoot_left && (image_index >= 3)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -15
		            yother = -9
		        }    
		    }
	
	
			//right
			if sprite_index = spr_shoot_right && (image_index < 1)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +16
		            yother = -8
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 1) && (image_index < 2)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +16
		            yother = -9
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 2) && (image_index < 3)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +15
		            yother = -9
		        }    
		    }
			else if sprite_index = spr_shoot_right && (image_index >= 3)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +14
		            yother = -9
		        }    
		    }
	
	
		    //aiming trueup
		    if sprite_index = spr_shoot_trueup_left
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -3
		            yother = -27
		        }    
		    }
		    if sprite_index = spr_shoot_trueup_right
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +1
		            yother = -27
		        }    
		    }
		    //aiming up
		    if sprite_index = spr_shoot_upleft
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -14
		            yother = -21
		        }    
		    }
		    if sprite_index = spr_shoot_upright
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +12
		            yother = -24
		        }    
		    }
		    //aiming down
		    if sprite_index = spr_shoot_downleft
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -16
		            yother = +5
		        }    
		    }
		    if sprite_index = spr_shoot_downright
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +16
		            yother = +6
		        }    
		    }
		    //aiming Truedown
		    if sprite_index = spr_shoot_Truedown_left
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -5;
		            yother = +15;
		        }    
		    }
		    if sprite_index = spr_shoot_Truedown_right
		    {
		        with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +5;
		            yother = +15;
		        }    
		    }

		/////////////////////////////////////////////////////
    
		//running
		    //left run shoot
		    if sprite_index = spr_run_left1 && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -21
		            yother = -7
		        }    
		    }
		    if sprite_index = spr_run_left1 && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -22
		            yother = -8
		        }    
		    }
		    if sprite_index = spr_run_left1 && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -19
		            yother = -8
		        }    
		    }
		    //right run shoot
		    if sprite_index = spr_run_right && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +19
		            yother = -6
		        }    
		    }
		    if sprite_index = spr_run_right && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +20
		            yother = -7
		        }    
		    }
		    if sprite_index = spr_run_right && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +18
		            yother = -7
		        }    
		    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
		    //upleft run shoot
		    if sprite_index = spr_run_upleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -16
		            yother = -22
		        }    
		    }
		    if sprite_index = spr_run_upleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -17
		            yother = -23
		        }    
		    }
		    if sprite_index = spr_run_upleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -15
		            yother = -23
		        }    
		    }
		    //upright run shoot
		    if sprite_index = spr_run_upright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +15
		            yother = -23
		        }    
		    }
		    if sprite_index = spr_run_upright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +16
		            yother = -24
		        }    
		    }
		    if sprite_index = spr_run_upright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +14
		            yother = -24
		        }    
		    }
    
    
    
    
    
    
    
    
    
    
    
		    //trueupleft run shoot
		    if sprite_index = spr_run_trueupleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -2
		            yother = -28
		        }    
		    }
		    if sprite_index = spr_run_trueupleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -3
		            yother = -29
		        }    
		    }
		    if sprite_index = spr_run_trueupleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -1
		            yother = -29
		        }    
		    }
		    //trueupright run shoot
		    if sprite_index = spr_run_trueupright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +4
		            yother = -28
		        }    
		    }
		    if sprite_index = spr_run_trueupright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +5
		            yother = -29
		        }    
		    }
		    if sprite_index = spr_run_trueupright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +3
		            yother = -29
		        }    
		    }
    
    
    
    
    
    
    
    
		    //downleft run shoot
		    if sprite_index = spr_run_downleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -19
		            yother = +5
		        }    
		    }
		    if sprite_index = spr_run_downleft && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -20
		            yother = +4
		        }    
		    }
		    if sprite_index = spr_run_downleft && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = -18
		            yother = +4
		        }    
		    }
		    //downright run shoot
		    if sprite_index = spr_run_downright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +19
		            yother = +6
		        }    
		    }
		    if sprite_index = spr_run_downright && (3 <=image_index && image_index< 6)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +20
		            yother = +5
		        }    
		    }
		    if sprite_index = spr_run_downright && (9 <=image_index && image_index< 12)
		    {
		        with(obj_darkness_effect_xvision)
		        {
		            xother = +18
		            yother = +5
		        }    
		    }
    
    
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////

		//crouching
		        //forward
		    if sprite_index = spr_crouchshoot_left
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -16;
		            yother = -1;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_right
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +17;
		            yother = -1;
		        } 
		    }
    
		        //up
		    if sprite_index = spr_crouchshoot_upleft
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -12;
		            yother = -16;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_upright
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +12;
		            yother = -16;
		        } 
		    }
    
    
		        //down
		    if sprite_index = spr_crouchshoot_downleft
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -15;
		            yother = +11;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_downright
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +16;
		            yother = +12;
		        } 
		    }
    
    
    
		        //trueup
		    if sprite_index = spr_crouchshoot_trueupleft
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -2;
		            yother = -21;
		        } 
		    }
		    if sprite_index = spr_crouchshoot_trueupright
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +2;
		            yother = -21;
		        } 
		    }
    
		        //truedown
		    if sprite_index = spr_shoot_crouch_Truedown_left
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -4;
		            yother = +17;
		        } 
		    }
		    if sprite_index = spr_shoot_crouch_Truedown_right
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +5;
		            yother = +17;
		        } 
		    }


		/////////////////////////////////////////////////////////////////////////////////////////////
		//jumping
		    //forward
		    if (sprite_index = spr_shootjump_left)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -18;
		            yother = -4;
		        } 
		    }
		    if (sprite_index = spr_shootjump_right)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +17;
		            yother = -5;
		        } 
		    }
    
		    //up
		    if (sprite_index = spr_shootjump_upleft)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -15;
		            yother = -20;
		        } 
		    }
		    if (sprite_index = spr_shootjump_upright)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +12;
		            yother = -20;
		        } 
		    }

		    //down
		    if (sprite_index = spr_shootjump_downleft)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -17;
		            yother = +8;
		        } 
		    }
		    if (sprite_index = spr_shootjump_downright)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +17;
		            yother = +8;
		        } 
		    }
    
		    //trueup
		    if (sprite_index = spr_shootjump_trueupleft)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -4;
		            yother = -24;
		        } 
		    }
		    if (sprite_index = spr_shootjump_trueupright)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +2;
		            yother = -25;
		        } 
		    }

    
		    //truedown
		    if (sprite_index = spr_shoot_jump_Truedown_left)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = -6;
		            yother = +14;
		        } 
		    }
		    if (sprite_index = spr_shoot_jump_Truedown_right)
		    {
		    with(obj_darkness_effect_xvision)
		        {
	            
		            xother = +5;
		            yother = +13;
		        } 
		    }

		///////////////////////////////////////////////////////////////////////////////////////////Dashing2.0
			if (sprite_index = spr_player_dash2_beginL)
		    {
			    if (image_index = 1) or (image_index = image_number-1)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = -17;
			            yother = -4;
			        } 
			    }
				if (image_index = 2) or (image_index = image_number-2)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = -7;
			            yother = -1;
			        } 
			    }
				if (image_index = 3) or (image_index = image_number-3)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = -33;
			            yother = +5;
			        } 
			    }
				if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = -33;
			            yother = +6;
			        } 
			    }
				if (image_index = 6) or (image_index = 7)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = -33;
			            yother = +7;
			        } 
			    }
			}
	
	
	
		    if (sprite_index = spr_player_dash2_beginR1)
		    {
			    if (image_index = 1) or (image_index = image_number-1)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = +19;
			            yother = -4;
			        } 
			    }
				if (image_index = 2) or (image_index = image_number-2)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = +30;
			            y = obj_player.y;
			        } 
			    }
				if (image_index = 3) or (image_index = image_number-3)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = +33;
			            yother = +5;
			        } 
			    }
				if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = +33;
			            yother = +6;
			        } 
			    }
				if (image_index = 6) or (image_index = 7)
				{
				with(obj_darkness_effect_xvision)
			        {
		            
			            xother = +33;
			            yother = +7;
			        } 
			    }
			}
	
	
		/////////////////////////////////////////////////////////HANG SHOOT LEFT
					if (sprite_index == spr_hangshoot_left)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +32;
				            yother = -14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_down)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +30;
				            yother = +3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_Tdown)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +14;
				            yother = +12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_Tup)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +7;
				            yother = -32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_left_up)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +22;
				            yother = -31;
				        } 
					}
					
					
					
					//hangshoot idle
					if (sprite_index == spr_hangshoot_idle_left)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +32;
				            yother = -14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_left_down)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +30;
				            yother = +3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_left_Tdown)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +14;
				            yother = +12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_left_Tup)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +7;
				            yother = -32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_left_up)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = +22;
				            yother = -31;
				        } 
					}
	
	
		///////////////////////////////////////HANG SHOOT RIGHT
					if (sprite_index == spr_hangshoot_right)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -33;
				            yother = -14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_down)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -32;
				            yother = +3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_Tdown)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -15;
				            yother = +12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_Tup)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -7;
				            yother = -32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_right_up)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -23;
				            yother = -31;
				        } 
					}
					
					
					
					
					
					//hangshoot idle
					if (sprite_index == spr_hangshoot_idle_right)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -33;
				            yother = -14;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_right_down)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -32;
				            yother = +3;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_right_Tdown)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -15;
				            yother = +12;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_right_Tup)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -7;
				            yother = -32;
				        } 
					}
					else if (sprite_index == spr_hangshoot_idle_right_up)
					{
						with(obj_darkness_effect_xvision)
				        {
			            
				            xother = -23;
				            yother = -31;
				        } 
					}


	}


	switch1 = 1


}
