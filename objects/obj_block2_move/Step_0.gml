/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
{
	exit;	
}

//is touching player?
playerOntop = (place_meeting(x,y-1,obj_player));
playerSides = (place_meeting(x-1,y,obj_player)) or (place_meeting(x+1,y,obj_player));
playerBelow = (place_meeting(x,y+1,obj_player));

//determine if player about to get crushed
if (switchX == 0) or (switchY == 0)
{
	if (direction1 == 1)
	{
		//work out what our hspd and vspd signs will be before running movement code later
		if (floor(x) + (hspd) < finishX) && (floor(x) != finishX) // Too L
		{
			if (floor(y) + (vspd) < finishY) && (floor(y) != finishY) // Too U
			{
				with(obj_player) 
				{
					if ((place_meeting(x+other.hspd,y+other.vspd,obj_block)) 
					or (place_meeting(x+other.hspd,y+other.vspd,obj_slope1_left)) or (place_meeting(x+other.hspd,y+other.vspd,obj_slope1_right))
					or (place_meeting(x+other.hspd,y+other.vspd,obj_newslope_left)) or (place_meeting(x+other.hspd,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y+other.vspd,obj_block2_move)) 
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > finishY) && (floor(y) != finishY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x+other.hspd,y-other.vspd,obj_block)) 
					or (place_meeting(x+other.hspd,y-other.vspd,obj_slope1_left)) or (place_meeting(x+other.hspd,y-other.vspd,obj_slope1_right))
					or (place_meeting(x+other.hspd,y-other.vspd,obj_newslope_left)) or (place_meeting(x+other.hspd,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y-other.vspd,obj_block2_move)) 
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == finishY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x+other.hspd,y,obj_block)) 
					or (place_meeting(x+other.hspd,y,obj_slope1_left)) or (place_meeting(x+other.hspd,y,obj_slope1_right))
					or (place_meeting(x+other.hspd,y,obj_newslope_left)) or (place_meeting(x+other.hspd,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y,obj_block2_move)) 
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
		}
		else if (floor(x) - (hspd) > finishX) && (floor(x) != finishX) // Too R
		{
			if (floor(y) + (vspd) < finishY) && (floor(y) != finishY) // Too U
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y+other.vspd,obj_block)) 
					or (place_meeting(x-other.hspd,y+other.vspd,obj_slope1_left)) or (place_meeting(x-other.hspd,y+other.vspd,obj_slope1_right))
					or (place_meeting(x-other.hspd,y+other.vspd,obj_newslope_left)) or (place_meeting(x-other.hspd,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x-other.hspd,y+other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > finishY) && (floor(y) != finishY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y-other.vspd,obj_block)) 
					or (place_meeting(x-other.hspd,y-other.vspd,obj_slope1_left)) or (place_meeting(x-other.hspd,y-other.vspd,obj_slope1_right))
					or (place_meeting(x-other.hspd,y-other.vspd,obj_newslope_left)) or (place_meeting(x-other.hspd,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x-other.hspd,y-other.vspd,obj_block2_move)) 
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == finishY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y,obj_block)) 
					or (place_meeting(x-other.hspd,y,obj_slope1_left)) or (place_meeting(x-other.hspd,y,obj_slope1_right))
					or (place_meeting(x-other.hspd,y,obj_newslope_left)) or (place_meeting(x-other.hspd,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x-other.hspd,y,obj_block2_move)) 
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
		}
		else if (floor(x) == finishX)
		{
			if (floor(y) + (vspd) < finishY) && (floor(y) != finishY) // Too U
			{
				with(obj_player) 
				{
					if ((place_meeting(x,y+other.vspd,obj_block)) 
					or (place_meeting(x,y+other.vspd,obj_slope1_left)) or (place_meeting(x,y+other.vspd,obj_slope1_right))
					or (place_meeting(x,y+other.vspd,obj_newslope_left)) or (place_meeting(x,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y+other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > finishY) && (floor(y) != finishY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x,y-other.vspd,obj_block)) 
					or (place_meeting(x,y-other.vspd,obj_slope1_left)) or (place_meeting(x,y-other.vspd,obj_slope1_right))
					or (place_meeting(x,y-other.vspd,obj_newslope_left)) or (place_meeting(x,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y-other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == finishY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x,y,obj_block)) 
					or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
					or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}	
		}
	}
	else if (direction1 == -1)
	{
		//work out what our hspd and vspd signs will be before running movement code later
		if (floor(x) + (hspd) < startX) && (floor(x) != startX) // Too L
		{
			if (floor(y) + (vspd) < startY) && (floor(y) != startY) // Too U
			{
				with(obj_player) 
				{
					if ((place_meeting(x+other.hspd,y+other.vspd,obj_block)) 
					or (place_meeting(x+other.hspd,y+other.vspd,obj_slope1_left)) or (place_meeting(x+other.hspd,y+other.vspd,obj_slope1_right))
					or (place_meeting(x+other.hspd,y+other.vspd,obj_newslope_left)) or (place_meeting(x+other.hspd,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y+other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > startY) && (floor(y) != startY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x+other.hspd,y-other.vspd,obj_block)) 
					or (place_meeting(x+other.hspd,y-other.vspd,obj_slope1_left)) or (place_meeting(x+other.hspd,y-other.vspd,obj_slope1_right))
					or (place_meeting(x+other.hspd,y-other.vspd,obj_newslope_left)) or (place_meeting(x+other.hspd,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y-other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == startY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x+other.hspd,y,obj_block)) 
					or (place_meeting(x+other.hspd,y,obj_slope1_left)) or (place_meeting(x+other.hspd,y,obj_slope1_right))
					or (place_meeting(x+other.hspd,y,obj_newslope_left)) or (place_meeting(x+other.hspd,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
		}
		else if (floor(x) - (hspd) > startX) && (floor(x) != startX) // Too R
		{
			if (floor(y) + (vspd) < startY) && (floor(y) != startY) // Too U
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y+other.vspd,obj_block)) 
					or (place_meeting(x-other.hspd,y+other.vspd,obj_slope1_left)) or (place_meeting(x-other.hspd,y+other.vspd,obj_slope1_right))
					or (place_meeting(x-other.hspd,y+other.vspd,obj_newslope_left)) or (place_meeting(x-other.hspd,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x-other.hspd,y+other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > startY) && (floor(y) != startY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y-other.vspd,obj_block)) 
					or (place_meeting(x-other.hspd,y-other.vspd,obj_slope1_left)) or (place_meeting(x-other.hspd,y-other.vspd,obj_slope1_right))
					or (place_meeting(x-other.hspd,y-other.vspd,obj_newslope_left)) or (place_meeting(x-other.hspd,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x-other.hspd,y-other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == startY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x-other.hspd,y,obj_block)) 
					or (place_meeting(x-other.hspd,y,obj_slope1_left)) or (place_meeting(x-other.hspd,y,obj_slope1_right))
					or (place_meeting(x-other.hspd,y,obj_newslope_left)) or (place_meeting(x-other.hspd,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x+other.hspd,y,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
		}
		else if (floor(x) == startX)
		{
			if (floor(y) + (vspd) < startY) && (floor(y) != startY) // Too U
			{
				with(obj_player) 
				{
					if ((place_meeting(x,y+other.vspd,obj_block)) 
					or (place_meeting(x,y+other.vspd,obj_slope1_left)) or (place_meeting(x,y+other.vspd,obj_slope1_right))
					or (place_meeting(x,y+other.vspd,obj_newslope_left)) or (place_meeting(x,y+other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y+other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) - (vspd) > startY) && (floor(y) != startY) // Too D
			{
				with(obj_player)
				{
					if ((place_meeting(x,y-other.vspd,obj_block)) 
					or (place_meeting(x,y-other.vspd,obj_slope1_left)) or (place_meeting(x,y-other.vspd,obj_slope1_right))
					or (place_meeting(x,y-other.vspd,obj_newslope_left)) or (place_meeting(x,y-other.vspd,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y-other.vspd,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}
			else if (floor(y) == startY) // Correct y value
			{
				with(obj_player)
				{
					if ((place_meeting(x,y,obj_block)) 
					or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
					or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right)))
					&& ((other.playerOntop) or (other.playerSides) or (other.playerBelow))
					{
						if (!place_meeting(x,y,obj_block2_move))
						{
							other.playerDontMove = true; //don't move if player about to get crushed
						}
					}
					else other.playerDontMove = false;
				}
			}	
		}
	}
}

//go towards target
if (direction1 = 1)
&& (playerDontMove == false)
{
	//X
	if (hspd != 0)
	&& (switchX == 0)
	{
		//we're too far left from finishX
		if (floor(x) + (hspd) < finishX) && (floor(x) != finishX)
		{
			//at least hspd pixels away
			if (!place_meeting(x+hspd,y,obj_block)) 
			&& (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_slope1_right))
			&& (!place_meeting(x+hspd,y,obj_newslope_left)) && (!place_meeting(x+hspd,y,obj_newslope_right))
			{
				x += (hspd);
				
				counterX += (hspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than hspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x+sign(hspd),y,obj_block)) 
			&& (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right))
			&& (!place_meeting(x+sign(hspd),y,obj_newslope_left)) && (!place_meeting(x+sign(hspd),y,obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x+sign(hspd),y,obj_block)) 
				&& (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right))
				&& (!place_meeting(x+sign(hspd),y,obj_newslope_left)) && (!place_meeting(x+sign(hspd),y,obj_newslope_right))
				{
					x += 1;
					
					counterX++;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x+sign(hspd),y,obj_block)) 
			or (place_meeting(x+sign(hspd),y,obj_slope1_left)) or (place_meeting(x+sign(hspd),y,obj_slope1_right))
			or (place_meeting(x+sign(hspd),y,obj_newslope_left)) or (place_meeting(x+sign(hspd),y,obj_newslope_right)))
			{
				switchX = 1;
			}
		}
		else if (floor(x) + (hspd) >= finishX) && (floor(x) < finishX)
		{
			while (floor(x) + (hspd) >= finishX) && (floor(x) < finishX)
			{
				x += 1;	
				
				counterX++;
			}
		}
		else if (floor(x) == finishX)
		{
			switchX = 1;
		}
			
			
		//we're too far right from finishX
		if (floor(x) - (hspd) > finishX) && (floor(x) != finishX)
		{
			//at least hspd pixels away
			if (!place_meeting(x-hspd,y,obj_block)) 
			&& (!place_meeting(x-hspd,y,obj_slope1_left)) && (!place_meeting(x-hspd,y,obj_slope1_right))
			&& (!place_meeting(x-hspd,y,obj_newslope_left)) && (!place_meeting(x-hspd,y,obj_newslope_right))
			{
				x -= (hspd);
				
				counterX -= (hspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than hspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x-sign(hspd),y,obj_block)) 
			&& (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right))
			&& (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x-sign(hspd),y,obj_block)) 
				&& (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right))
				&& (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right))
				{
					x -= 1;
					
					counterX--;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x-sign(hspd),y,obj_block)) 
			or (place_meeting(x-sign(hspd),y,obj_slope1_left)) or (place_meeting(x-sign(hspd),y,obj_slope1_right))
			or (place_meeting(x-sign(hspd),y,obj_newslope_left)) or (place_meeting(x-sign(hspd),y,obj_newslope_right)))
			{
				switchX = 1;
			}
		}
		else if (floor(x) - (hspd) <= finishX) && (floor(x) > finishX)
		{
			while (floor(x) - (hspd) <= finishX) && (floor(x) > finishX)
			{
				x -= 1;	
				
				counterX--;
			}
		}
		else if (floor(x) == finishX)
		{
			switchX = 1;
		}
		
	}
	
	
	//Y
	if (vspd != 0)
	&& (switchY == 0)
	{
		//too far above of finishY
		if (floor(y) + (vspd) < finishY) && (floor(y) != finishY)
		{
			//at least vspd pixels away+vspd
			if (!place_meeting(x,y+vspd,obj_block)) 
			&& (!place_meeting(x,y+vspd,obj_slope1_left)) && (!place_meeting(x,y+vspd,obj_slope1_right))
			&& (!place_meeting(x,y+vspd,obj_newslope_left)) && (!place_meeting(x,y+vspd,obj_newslope_right))
			{
				y += (vspd);
				
				counterY += (vspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than vspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x,y+sign(vspd),obj_block)) 
			&& (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (!place_meeting(x,y+sign(vspd),obj_slope1_right))
			&& (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (!place_meeting(x,y+sign(vspd),obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x,y+sign(vspd),obj_block)) 
				&& (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (!place_meeting(x,y+sign(vspd),obj_slope1_right))
				&& (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (!place_meeting(x,y+sign(vspd),obj_newslope_right))
				{
					y += 1;
					
					counterY++;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x,y+sign(vspd),obj_block)) 
			or (place_meeting(x,y+sign(vspd),obj_slope1_left)) or (place_meeting(x,y+sign(vspd),obj_slope1_right))
			or (place_meeting(x,y+sign(vspd),obj_newslope_left)) or (place_meeting(x,y+sign(vspd),obj_newslope_right)))
			{
				switchY = 1;
			}
		}
		else if (floor(y) + (vspd) >= finishY) && (floor(y) < finishY)
		{
			while (floor(y) + (vspd) >= finishY) && (floor(y) < finishY)
			{
				y += 1;	
				
				counterY++;
			}
		}
		else if (floor(y) == finishY)
		{
			switchY = 1;
		}
			
			
			
		//too far below of finishY
		if (floor(y) - (vspd) > finishY) && (floor(y) != finishY)
		{
			//at least vspd pixels away+vspd
			if (!place_meeting(x,y-vspd,obj_block)) 
			&& (!place_meeting(x,y-vspd,obj_slope1_left)) && (!place_meeting(x,y-vspd,obj_slope1_right))
			&& (!place_meeting(x,y-vspd,obj_newslope_left)) && (!place_meeting(x,y-vspd,obj_newslope_right))
			{
				y -= (vspd);
				
				counterY -= (vspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than vspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x,y-sign(vspd),obj_block)) 
			&& (!place_meeting(x,y-sign(vspd),obj_slope1_left)) && (!place_meeting(x,y-sign(vspd),obj_slope1_right))
			&& (!place_meeting(x,y-sign(vspd),obj_newslope_left)) && (!place_meeting(x,y-sign(vspd),obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x,y-sign(vspd),obj_block)) 
				&& (!place_meeting(x,y-sign(vspd),obj_slope1_left)) && (!place_meeting(x,y-sign(vspd),obj_slope1_right))
				&& (!place_meeting(x,y-sign(vspd),obj_newslope_left)) && (!place_meeting(x,y-sign(vspd),obj_newslope_right))
				{
					y -= 1;
					
					counterY--;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x,y-sign(vspd),obj_block)) 
			or (place_meeting(x,y-sign(vspd),obj_slope1_left)) or (place_meeting(x,y-sign(vspd),obj_slope1_right))
			or (place_meeting(x,y-sign(vspd),obj_newslope_left)) or (place_meeting(x,y-sign(vspd),obj_newslope_right)))
			{
				switchY = 1;
			}
		}
		else if (floor(y) - (vspd) <= finishY) && (floor(y) > finishY)
		{
			while (floor(y) - (vspd) <= finishY) && (floor(y) > finishY)
			{
				y -= 1;	
				counterY--;
			}
		}
		else if (floor(y) == finishY)
		{
			switchY = 1;
		}
		
	}
}



//travel back to starting position
if (direction1 = -1)
&& (playerDontMove == false)
{
	//X
	if (hspd != 0)
	&& (switchX == 0)
	{
		//we're too far left from startX
		if (floor(x) + (hspd) < startX) && (floor(x) != startX)
		{
			//at least hspd pixels away
			if (!place_meeting(x+hspd,y,obj_block)) 
			&& (!place_meeting(x+hspd,y,obj_slope1_left)) && (!place_meeting(x+hspd,y,obj_slope1_right))
			&& (!place_meeting(x+hspd,y,obj_newslope_left)) && (!place_meeting(x+hspd,y,obj_newslope_right))
			{
				x += (hspd);
				
				counterX += (hspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than hspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x+sign(hspd),y,obj_block)) 
			&& (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right))
			&& (!place_meeting(x+sign(hspd),y,obj_newslope_left)) && (!place_meeting(x+sign(hspd),y,obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x+sign(hspd),y,obj_block)) 
				&& (!place_meeting(x+sign(hspd),y,obj_slope1_left)) && (!place_meeting(x+sign(hspd),y,obj_slope1_right))
				&& (!place_meeting(x+sign(hspd),y,obj_newslope_left)) && (!place_meeting(x+sign(hspd),y,obj_newslope_right))
				{
					x += 1;
					
					counterX++;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x+sign(hspd),y,obj_block)) 
			or (place_meeting(x+sign(hspd),y,obj_slope1_left)) or (place_meeting(x+sign(hspd),y,obj_slope1_right))
			or (place_meeting(x+sign(hspd),y,obj_newslope_left)) or (place_meeting(x+sign(hspd),y,obj_newslope_right)))
			{
				switchX = 1;
			}
		}
		else if (floor(x) + (hspd) >= startX) && (floor(x) < startX)
		{
			while (floor(x) + (hspd) >= startX) && (floor(x) < startX)
			{
				x += 1;	
				
				counterX++;
			}
		}
		else if (floor(x) == startX)
		{
			switchX = 1;
		}
			
			
		//we're too far right from startX
		if (floor(x) - (hspd) > startX) && (floor(x) != startX)
		{
			//at least hspd pixels away
			if (!place_meeting(x-hspd,y,obj_block)) 
			&& (!place_meeting(x-hspd,y,obj_slope1_left)) && (!place_meeting(x-hspd,y,obj_slope1_right))
			&& (!place_meeting(x-hspd,y,obj_newslope_left)) && (!place_meeting(x-hspd,y,obj_newslope_right))
			{
				x -= (hspd);
				
				counterX -= (hspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than hspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x-sign(hspd),y,obj_block)) 
			&& (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right))
			&& (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x-sign(hspd),y,obj_block)) 
				&& (!place_meeting(x-sign(hspd),y,obj_slope1_left)) && (!place_meeting(x-sign(hspd),y,obj_slope1_right))
				&& (!place_meeting(x-sign(hspd),y,obj_newslope_left)) && (!place_meeting(x-sign(hspd),y,obj_newslope_right))
				{
					x -= 1;
					
					counterX--;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x-sign(hspd),y,obj_block)) 
			or (place_meeting(x-sign(hspd),y,obj_slope1_left)) or (place_meeting(x-sign(hspd),y,obj_slope1_right))
			or (place_meeting(x-sign(hspd),y,obj_newslope_left)) or (place_meeting(x-sign(hspd),y,obj_newslope_right)))
			{
				switchX = 1;
			}
		}
		else if (floor(x) - (hspd) <= startX) && (floor(x) > startX)
		{
			while (floor(x) - (hspd) <= startX) && (floor(x) > startX)
			{
				x -= 1;	
				
				counterX--;
			}
		}
		else if (floor(x) == startX)
		{
			switchX = 1;
		}
		
	}
	
	
	//Y
	if (vspd != 0)
	&& (switchY == 0)
	{
		//too far above of startY
		if (floor(y) + (vspd) < startY) && (floor(y) != startY)
		{
			//at least vspd pixels away+vspd
			if (!place_meeting(x,y+vspd,obj_block)) 
			&& (!place_meeting(x,y+vspd,obj_slope1_left)) && (!place_meeting(x,y+vspd,obj_slope1_right))
			&& (!place_meeting(x,y+vspd,obj_newslope_left)) && (!place_meeting(x,y+vspd,obj_newslope_right))
			{
				y += (vspd);
				
				counterY += (vspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than vspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x,y+sign(vspd),obj_block)) 
			&& (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (!place_meeting(x,y+sign(vspd),obj_slope1_right))
			&& (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (!place_meeting(x,y+sign(vspd),obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x,y+sign(vspd),obj_block)) 
				&& (!place_meeting(x,y+sign(vspd),obj_slope1_left)) && (!place_meeting(x,y+sign(vspd),obj_slope1_right))
				&& (!place_meeting(x,y+sign(vspd),obj_newslope_left)) && (!place_meeting(x,y+sign(vspd),obj_newslope_right))
				{
					y += 1;
					
					counterY++;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x,y+sign(vspd),obj_block)) 
			or (place_meeting(x,y+sign(vspd),obj_slope1_left)) or (place_meeting(x,y+sign(vspd),obj_slope1_right))
			or (place_meeting(x,y+sign(vspd),obj_newslope_left)) or (place_meeting(x,y+sign(vspd),obj_newslope_right)))
			{
				switchY = 1;
			}
		}
		else if (floor(y) + (vspd) >= startY) && (floor(y) < startY)
		{
			while (floor(y) + (vspd) >= startY) && (floor(y) < startY)
			{
				y += 1;	
				
				counterY++;
			}
		}
		else if (floor(y) == startY)
		{
			switchY = 1;
		}
			
			
			
		//too far below of startY
		if (floor(y) - (vspd) > startY) && (floor(y) != startY)
		{
			//at least vspd pixels away+vspd
			if (!place_meeting(x,y-vspd,obj_block)) 
			&& (!place_meeting(x,y-vspd,obj_slope1_left)) && (!place_meeting(x,y-vspd,obj_slope1_right))
			&& (!place_meeting(x,y-vspd,obj_newslope_left)) && (!place_meeting(x,y-vspd,obj_newslope_right))
			{
				y -= (vspd);
				
				counterY -= (vspd);
			}
			else if (!place_meeting(x,y,obj_block)) //less than vspd pixels away from block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& (!place_meeting(x,y-sign(vspd),obj_block)) 
			&& (!place_meeting(x,y-sign(vspd),obj_slope1_left)) && (!place_meeting(x,y-sign(vspd),obj_slope1_right))
			&& (!place_meeting(x,y-sign(vspd),obj_newslope_left)) && (!place_meeting(x,y-sign(vspd),obj_newslope_right))
			{
				while (!place_meeting(x,y,obj_block)) 
				&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
				&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
				&& (!place_meeting(x,y-sign(vspd),obj_block)) 
				&& (!place_meeting(x,y-sign(vspd),obj_slope1_left)) && (!place_meeting(x,y-sign(vspd),obj_slope1_right))
				&& (!place_meeting(x,y-sign(vspd),obj_newslope_left)) && (!place_meeting(x,y-sign(vspd),obj_newslope_right))
				{
					y -= 1;
					
					counterY--;
				}
			}
			else if (!place_meeting(x,y,obj_block)) //exactly next to block
			&& (!place_meeting(x,y,obj_slope1_left)) && (!place_meeting(x,y,obj_slope1_right))
			&& (!place_meeting(x,y,obj_newslope_left)) && (!place_meeting(x,y,obj_newslope_right))
			&& ((place_meeting(x,y-sign(vspd),obj_block)) 
			or (place_meeting(x,y-sign(vspd),obj_slope1_left)) or (place_meeting(x,y-sign(vspd),obj_slope1_right))
			or (place_meeting(x,y-sign(vspd),obj_newslope_left)) or (place_meeting(x,y-sign(vspd),obj_newslope_right)))
			{
				switchY = 1;
			}
		}
		else if (floor(y) - (vspd) <= startY) && (floor(y) > startY)
		{
			while (floor(y) - (vspd) <= startY) && (floor(y) > startY)
			{
				y -= 1;	
				counterY--;
			}
		}
		else if (floor(y) == startY)
		{
			switchY = 1;
		}
		
	}
}





//turn around
if (switchX = 1) && (switchY = 1)
{
	if (timer1 < 1) //pause before turn
	{
		timer1 += 1/60;
	}
	else if (timer1 >= 1) //turn
	{
		direction1 = -direction1;
		switchX = 0;
		switchY = 0;
		timer1 = 0;
		//hspd = -hspd;
		//vspd = -vspd;
	}
}



//move player if on top
if (playerOntop)
{
	with(obj_player)
	{
		obj_player.x += other.counterX;
		obj_player.y += other.counterY;
			
		object_player2_0_sprites.x += other.counterX;
		object_player2_0_sprites.y += other.counterY;
	}
}

if (playerBelow)
{
	with(obj_player)
	{
		//obj_player.x += other.counterX;
		obj_player.y += other.counterY;
			
		//object_player2_0_sprites.x += other.counterX;
		object_player2_0_sprites.y += other.counterY;
	}
}

if (playerSides)
{
	with(obj_player)
	{
		if (global.hang == 0) && (global.climbing == 0) && (global.hangAiming == 0) && (global.shoot == 0)
		{
			obj_player.x += other.counterX;
			//obj_player.y += other.counterY;
			
			object_player2_0_sprites.x += other.counterX;
			//object_player2_0_sprites.y += other.counterY;
		}
		else
		{
			obj_player.x += other.counterX;
			obj_player.y += other.counterY;
			
			object_player2_0_sprites.x += other.counterX;
			object_player2_0_sprites.y += other.counterY;
			
			obj_camera.x += other.counterX;
			obj_camera.y += other.counterY;
		}
	}
}

if (!playerOntop) && (!playerBelow) && (!playerSides)
{
	with(obj_player)
	{
		hspd_enemy = 0;
		vspd_wind = 0;
	}
}




//reset
counterX = 0;
counterY = 0;