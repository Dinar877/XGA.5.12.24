function bullet_shield_chargeblast() {
	with(obj_player)
	{
	with(object_player2_0_sprites)
	{
	//standing
	    //normal
	    if sprite_index = spr_shoot_left
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
	            x = obj_player.x-22
	            y = obj_player.y-5
	        }    
	    }
	    if sprite_index = spr_shoot_right
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
	            x = obj_player.x+20
	            y = obj_player.y-5
	        }    
	    }
	    //aiming trueup
	    if sprite_index = spr_shoot_trueup_left
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
	            x = obj_player.x-3
	            y = obj_player.y-30
	        }    
	    }
	    if sprite_index = spr_shoot_trueup_right
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
	            x = obj_player.x+2
	            y = obj_player.y-30
	        }    
	    }
	    //aiming up
	    if sprite_index = spr_shoot_upleft
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
	            x = obj_player.x-15
	            y = obj_player.y-24
	        }    
	    }
	    if sprite_index = spr_shoot_upright
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
	            x = obj_player.x+14
	            y = obj_player.y-24
	        }    
	    }
	    //aiming down
	    if sprite_index = spr_shoot_downleft
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
	            x = obj_player.x-18
	            y = obj_player.y+7
	        }    
	    }
	    if sprite_index = spr_shoot_downright
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
	            x = obj_player.x+19
	            y = obj_player.y+9
	        }    
	    }
	    //aiming Truedown
	    if sprite_index = spr_shoot_Truedown_left
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDL;
	            x = obj_player.x-5;
	            y = obj_player.y+15;
	        }    
	    }
	    if sprite_index = spr_shoot_Truedown_right
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDR;
	            x = obj_player.x+5;
	            y = obj_player.y+15;
	        }    
	    }

	/////////////////////////////////////////////////////
    
	//running
	    //left run shoot
	    if sprite_index = spr_run_left1 && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
				x = obj_player.x-23
	            y = obj_player.y-5
	        }    
	    }
	    if sprite_index = spr_run_left1 && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
				x = obj_player.x-24
	            y = obj_player.y-6
	        }    
	    }
	    if sprite_index = spr_run_left1 && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
				x = obj_player.x-22
	            y = obj_player.y-6
	        }    
	    }
	    //right run shoot
	    if sprite_index = spr_run_right && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
				x = obj_player.x+21
	            y = obj_player.y-5
	        }    
	    }
	    if sprite_index = spr_run_right && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
				x = obj_player.x+22
	            y = obj_player.y-6
	        }    
	    }
	    if sprite_index = spr_run_right && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
				x = obj_player.x+20
	            y = obj_player.y-6
	        }    
	    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
	    //upleft run shoot
	    if sprite_index = spr_run_upleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
				x = obj_player.x-16
	            y = obj_player.y-25
	        }    
	    }
	    if sprite_index = spr_run_upleft && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
				x = obj_player.x-17
	            y = obj_player.y-26
	        }    
	    }
	    if sprite_index = spr_run_upleft && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
				x = obj_player.x-15
	            y = obj_player.y-26
	        }    
	    }
	    //upright run shoot
	    if sprite_index = spr_run_upright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
				x = obj_player.x+15
	            y = obj_player.y-25
	        }    
	    }
	    if sprite_index = spr_run_upright && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
				x = obj_player.x+16
	            y = obj_player.y-26
	        }    
	    }
	    if sprite_index = spr_run_upright && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
				x = obj_player.x+14
	            y = obj_player.y-26
	        }    
	    }
    
    
    
    
    
    
    
    
    
    
    
	    //trueupleft run shoot
	    if sprite_index = spr_run_trueupleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
				x = obj_player.x-3
	            y = obj_player.y-31
	        }    
	    }
	    if sprite_index = spr_run_trueupleft && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
				x = obj_player.x-4
	            y = obj_player.y-32
	        }    
	    }
	    if sprite_index = spr_run_trueupleft && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
				x = obj_player.x-2
	            y = obj_player.y-32
	        }    
	    }
	    //trueupright run shoot
	    if sprite_index = spr_run_trueupright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
				x = obj_player.x+3
	            y = obj_player.y-31
	        }    
	    }
	    if sprite_index = spr_run_trueupright && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
				x = obj_player.x+4
	            y = obj_player.y-32
	        }    
	    }
	    if sprite_index = spr_run_trueupright && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
				x = obj_player.x+2
	            y = obj_player.y-32
	        }    
	    }
    
    
    
    
    
    
    
    
	    //downleft run shoot
	    if sprite_index = spr_run_downleft && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
				x = obj_player.x-19
	            y = obj_player.y+7
	        }    
	    }
	    if sprite_index = spr_run_downleft && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
				x = obj_player.x-20
	            y = obj_player.y+6
	        }    
	    }
	    if sprite_index = spr_run_downleft && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
				x = obj_player.x-18
	            y = obj_player.y+6
	        }    
	    }
	    //downright run shoot
	    if sprite_index = spr_run_downright && !((9 <=image_index && image_index< 12) && (3 <=image_index && image_index< 6))
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
				x = obj_player.x+20
	            y = obj_player.y+9
	        }    
	    }
	    if sprite_index = spr_run_downright && (3 <=image_index && image_index< 6)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
				x = obj_player.x+21
	            y = obj_player.y+8
	        }    
	    }
	    if sprite_index = spr_run_downright && (9 <=image_index && image_index< 12)
	    {
	        with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
				x = obj_player.x+19
	            y = obj_player.y+8
	        }    
	    }
    
    
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////

	//crouching
	        //forward
	    if sprite_index = spr_crouchshoot_left
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
	            x = obj_player.x-21;
	            y = obj_player.y;
	        } 
	    }
	    if sprite_index = spr_crouchshoot_right
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
	            x = obj_player.x+19;
	            y = obj_player.y;
	        } 
	    }
    
	        //up
	    if sprite_index = spr_crouchshoot_upleft
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
	            x = obj_player.x-14;
	            y = obj_player.y-19;
	        } 
	    }
	    if sprite_index = spr_crouchshoot_upright
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
	            x = obj_player.x+13;
	            y = obj_player.y-19;
	        } 
	    }
    
    
	        //down
	    if sprite_index = spr_crouchshoot_downleft
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
	            x = obj_player.x-17;
	            y = obj_player.y+12;
	        } 
	    }
	    if sprite_index = spr_crouchshoot_downright
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
	            x = obj_player.x+18;
	            y = obj_player.y+14;
	        } 
	    }
    
    
    
	        //trueup
	    if sprite_index = spr_crouchshoot_trueupleft
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
	            x = obj_player.x-2;
	            y = obj_player.y-25;
	        } 
	    }
	    if sprite_index = spr_crouchshoot_trueupright
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
	            x = obj_player.x+1;
	            y = obj_player.y-25;
	        } 
	    }
    
	        //truedown
	    if sprite_index = spr_shoot_crouch_Truedown_left
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDL;
	            x = obj_player.x-3;
	            y = obj_player.y+20;
	        } 
	    }
	    if sprite_index = spr_shoot_crouch_Truedown_right
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDR;
	            x = obj_player.x+3;
	            y = obj_player.y+20;
	        } 
	    }


	/////////////////////////////////////////////////////////////////////////////////////////////
	//jumping
	    //forward
	    if (sprite_index = spr_shootjump_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
	            x = obj_player.x-22;
	            y = obj_player.y-3;
	        } 
	    }
	    if (sprite_index = spr_shootjump_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
	            x = obj_player.x+19;
	            y = obj_player.y-3;
	        } 
	    }
    
	    //up
	    if (sprite_index = spr_shootjump_upleft)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
	            x = obj_player.x-15;
	            y = obj_player.y-22;
	        } 
	    }
	    if (sprite_index = spr_shootjump_upright)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
	            x = obj_player.x+13;
	            y = obj_player.y-22;
	        } 
	    }

	    //down
	    if (sprite_index = spr_shootjump_downleft)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
	            x = obj_player.x-18;
	            y = obj_player.y+9;
	        } 
	    }
	    if (sprite_index = spr_shootjump_downright)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
	            x = obj_player.x+18;
	            y = obj_player.y+11;
	        } 
	    }
    
	    //trueup
	    if (sprite_index = spr_shootjump_trueupleft)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
	            x = obj_player.x-3;
	            y = obj_player.y-28;
	        } 
	    }
	    if (sprite_index = spr_shootjump_trueupright)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
	            x = obj_player.x+1;
	            y = obj_player.y-28;
	        } 
	    }

    
	    //truedown
	    if (sprite_index = spr_shoot_jump_Truedown_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDL;
	            x = obj_player.x-4;
	            y = obj_player.y+17;
	        } 
	    }
	    if (sprite_index = spr_shoot_jump_Truedown_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDR;
	            x = obj_player.x+4;
	            y = obj_player.y+17;
	        } 
	    }

	///////////////////////////////////////////////////////////////////////////////////////////Dashing2.0
		if (sprite_index = spr_player_dash2_beginL)
	    {
		    if (image_index = 1) or (image_index = image_number-1)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_left;
		            x = obj_player.x-17;
		            y = obj_player.y-4;
		        } 
		    }
			if (image_index = 2) or (image_index = image_number-2)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_left;
		            x = obj_player.x-7;
		            y = obj_player.y-1;
		        } 
		    }
			if (image_index = 3) or (image_index = image_number-3)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_left;
		            x = obj_player.x-33;
		            y = obj_player.y+5;
		        } 
		    }
			if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_left;
		            x = obj_player.x-33;
		            y = obj_player.y+6;
		        } 
		    }
			if (image_index = 6) or (image_index = 7)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_left;
		            x = obj_player.x-33;
		            y = obj_player.y+7;
		        } 
		    }
		}
	
	
	
	    if (sprite_index = spr_player_dash2_beginR1)
	    {
		    if (image_index = 1) or (image_index = image_number-1)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_right;
		            x = obj_player.x+19;
		            y = obj_player.y-4;
		        } 
		    }
			if (image_index = 2) or (image_index = image_number-2)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_right;
		            x = obj_player.x+30;
		            y = obj_player.y;
		        } 
		    }
			if (image_index = 3) or (image_index = image_number-3)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_right;
		            x = obj_player.x+33;
		            y = obj_player.y+5;
		        } 
		    }
			if (image_index = 4) or (image_index = 5) or (image_index = 8) or (image_index = 9)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_right;
		            x = obj_player.x+33;
		            y = obj_player.y+6;
		        } 
		    }
			if (image_index = 6) or (image_index = 7)
			{
			with(obj_chargeblast_effect)
		        {
		            sprite_index = spr_SHIELD_charged_blast_right;
		            x = obj_player.x+33;
		            y = obj_player.y+7;
		        } 
		    }
		}


	/////////////////////////////////////////////////////////////////////////////////////////////
	//jumping normal
	    //forward
	    if (sprite_index = spr_jump_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_left;
	            x = obj_player.x-22;
	            y = obj_player.y-3;
	        } 
	    }
	    if (sprite_index = spr_jump_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_right;
	            x = obj_player.x+19;
	            y = obj_player.y-3;
	        } 
	    }
    
	    //up
	    if (sprite_index = spr_jump_up_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upleft;
	            x = obj_player.x-15;
	            y = obj_player.y-22;
	        } 
	    }
	    if (sprite_index = spr_jump_up_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_upright;
	            x = obj_player.x+13;
	            y = obj_player.y-22;
	        } 
	    }

	    //down
	    if (sprite_index = spr_jump_down_lefrt)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downleft;
	            x = obj_player.x-18;
	            y = obj_player.y+9;
	        } 
	    }
	    if (sprite_index = spr_jump_down_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_downright;
	            x = obj_player.x+18;
	            y = obj_player.y+11;
	        } 
	    }
    
	    //trueup
	    if (sprite_index = spr_jump_trueup_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUL;
	            x = obj_player.x-3;
	            y = obj_player.y-28;
	        } 
	    }
	    if (sprite_index = spr_jump_trueup_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TUR;
	            x = obj_player.x+1;
	            y = obj_player.y-28;
	        } 
	    }

    
	    //truedown
	    if (sprite_index = spr_jump_truedown_left)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDL;
	            x = obj_player.x-4;
	            y = obj_player.y+17;
	        } 
	    }
	    if (sprite_index = spr_jump_truedown_right)
	    {
	    with(obj_chargeblast_effect)
	        {
	            sprite_index = spr_SHIELD_charged_blast_TDR;
	            x = obj_player.x+4;
	            y = obj_player.y+17;
	        } 
	    }


		if (sprite_index == spr_hangshoot_left)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_right;
			            x = obj_player.x+35;
			            y = obj_player.y-14;
			        } 
				}
				else if (sprite_index == spr_hangshoot_left_down)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_downright;
			            x = obj_player.x+32;
			            y = obj_player.y+5;
			        } 
				}
				else if (sprite_index == spr_hangshoot_left_Tdown)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_TDR;
			            x = obj_player.x+13;
			            y = obj_player.y+16;
			        } 
				}
				else if (sprite_index == spr_hangshoot_left_Tup)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_TUR
			            x = obj_player.x+5;
			            y = obj_player.y-35;
			        } 
				}
				else if (sprite_index == spr_hangshoot_left_up)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_upright;
			            x = obj_player.x+23;
			            y = obj_player.y-33;
			        } 
				}
	
	
				//HANG SHOOT RIGHT
				if (sprite_index == spr_hangshoot_right)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_left;
			            x = obj_player.x-36;
			            y = obj_player.y-14;
			        } 
				}
				else if (sprite_index == spr_hangshoot_right_down)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_downleft;
			            x = obj_player.x-33;
			            y = obj_player.y+5;
			        } 
				}
				else if (sprite_index == spr_hangshoot_right_Tdown)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_TDL;
			            x = obj_player.x-14;
			            y = obj_player.y+16;
			        } 
				}
				else if (sprite_index == spr_hangshoot_right_Tup)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_TUL;
			            x = obj_player.x-6;
			            y = obj_player.y-35;
			        } 
				}
				else if (sprite_index == spr_hangshoot_right_up)
				{
					with(obj_chargeblast_effect)
			        {
			            sprite_index = spr_SHIELD_charged_blast_upleft;
			            x = obj_player.x-24;
			            y = obj_player.y-33;
			        } 
				}


	}




































    
	}



}
