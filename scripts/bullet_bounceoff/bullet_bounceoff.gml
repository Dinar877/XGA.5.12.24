function bullet_bounceoff() {
				if (global.beam_homing_available = 1) && (global.beam_shield_available = 0)
				{
					//NORMAL BLOCK-homing
					if (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right))
					&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right))
					{
						#region
						//bouncing off right side
						if (place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && ((hspd == 0) or (vspd == 0))
						{
							x -= hspd;
							y -= vspd;
							vspd = -vspd;
							hspd = -hspd;
						
						
							if (charge <= 0)
							{
								if (vspd == 0) && (hspd > 0)
								{
									sprite_index = spr_HOMING_uncharged_right
								}
								else if (vspd == 0) && (hspd < 0)
								{
									sprite_index = spr_HOMING_uncharged_left;
								}
								else if (vspd > 0) && (hspd == 0)
								{
									sprite_index = spr_HOMING_uncharged_down;
								}
								else if (vspd < 0) && (hspd == 0)
								{
									sprite_index = spr_HOMING_uncharged_up;
								}
							}
							else if (charge > 0)
							{
								if (vspd == 0) && (hspd > 0)
								{
									sprite_index = spr_HOMING_charged_right
								}
								else if (vspd == 0) && (hspd < 0)
								{
									sprite_index = spr_HOMING_charged_left;
								}
								else if (vspd > 0) && (hspd == 0)
								{
									sprite_index = spr_HOMING_charged_down;
								}
								else if (vspd < 0) && (hspd == 0)
								{
									sprite_index = spr_HOMING_charged_up;
								}
							}
						
						
							hit_reflected += 1;
						}
						else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && ((hspd != 0) && (vspd != 0))
						{
					
							//if bouncing off wall
							if (place_meeting(x+sign(hspd),y,obj_block))
							{
								x -= hspd;
								hspd = -hspd;
							}
					
							//if bouncing off ground
							if (place_meeting(x,y+sign(vspd),obj_block))
							{
								y -= vspd;
								vspd = -vspd;
							}
					
							//if bouncing off corner edge
							if (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
							{
								x -= hspd;
								hspd = -hspd;
						
								y -= vspd;
								vspd = -vspd;
							}
					
							if (charge <= 0)
							{
								if (hspd > 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_uncharged_rightdown;
								}
								else if (hspd < 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_uncharged_leftdown;
								}
								else if (hspd > 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_uncharged_rightup;
								}
								else if (hspd < 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_uncharged_leftup;
								}
							}
							if (charge > 0)
							{
								if (hspd > 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_charged_rightdown;
								}
								else if (hspd < 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_charged_leftdown;
								}
								else if (hspd > 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_charged_rightup;
								}
								else if (hspd < 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_charged_leftup;
								}
							}
					
							hit_reflected += 1;
						}
						else if (place_meeting(x+sign(hspd),y-sign(vspd),obj_block)) && ((hspd != 0) && (vspd != 0))
						{
							//if bouncing off wall
							if (place_meeting(x+sign(hspd),y,obj_block))
							{
								x -= hspd;
								hspd = -hspd;
							}
					
							//if bouncing off ground
							if (place_meeting(x,y+sign(vspd),obj_block))
							{
								y -= vspd;
								vspd = -vspd;
							}
					
							//if bouncing off corner edge
							if (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
							{
								x -= hspd;
								hspd = -hspd;
						
								y -= vspd;
								vspd = -vspd;
							}
					
							if (charge <= 0)
							{
								if (hspd > 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_uncharged_rightdown;
								}
								else if (hspd < 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_uncharged_leftdown;
								}
								else if (hspd > 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_uncharged_rightup;
								}
								else if (hspd < 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_uncharged_leftup;
								}
							}
							if (charge > 0)
							{
								if (hspd > 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_charged_rightdown;
								}
								else if (hspd < 0) && (vspd > 0)
								{
								sprite_index = spr_HOMING_charged_leftdown;
								}
								else if (hspd > 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_charged_rightup;
								}
								else if (hspd < 0) && (vspd < 0)
								{
								sprite_index = spr_HOMING_charged_leftup;
								}
							}
					
					
							hit_reflected += 1;
						}
			
						#endregion
					}
			
					//SLOPE LEFT-homing
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_slope1_left))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_slope1_left))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_leftup;
							}
						}
						if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
					}
			
					#endregion
			
			
					//SLOPE RIGHT-homing
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_slope1_right))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_slope1_right))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_leftup;
							}
						}
						if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
					}
					#endregion
					
					
					
					//NEW SLOPE LEFT-homing
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_newslope_left))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_newslope_left))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_leftup;
							}
						}
						if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
					}
			
					#endregion
			
			
					//NEW SLOPE RIGHT-homing
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
								sprite_index = spr_HOMING_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
								sprite_index = spr_HOMING_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
								sprite_index = spr_HOMING_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_newslope_right))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_newslope_right))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_uncharged_leftup;
							}
						}
						if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_HOMING_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_HOMING_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
					}
					#endregion
					
				}
				else if (global.beam_homing_available = 1) && (global.beam_shield_available = 1)
				{
					//NORMAL BLOCK-SHIELD
					if (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right))
					&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right))
					{
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && ((hspd != 0) && (vspd != 0))
					{
					
						//if bouncing off wall
						if (place_meeting(x+sign(hspd),y,obj_block))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						//if bouncing off ground
						if (place_meeting(x,y+sign(vspd),obj_block))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						//if bouncing off corner edge
						if (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
						{
							x -= hspd;
							hspd = -hspd;
						
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y-sign(vspd),obj_block)) && ((hspd != 0) && (vspd != 0))
					{
						//if bouncing off wall
						if (place_meeting(x+sign(hspd),y,obj_block))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						//if bouncing off ground
						if (place_meeting(x,y+sign(vspd),obj_block))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						//if bouncing off corner edge
						if (!place_meeting(x+sign(hspd),y,obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
						{
							x -= hspd;
							hspd = -hspd;
						
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
					
						hit_reflected += 1;
						}
						#endregion
					}
			
					//SLOPE LEFT-SHIELD
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_slope1_left))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_slope1_left))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
						hit_reflected += 1;
					}
					#endregion
			
			
					//SLOPE RIGHT-SHIELD
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && ((hspd != 0) && (vspd != 0))
					{
					
					
					
						if (place_meeting(x+(hspd),y,obj_slope1_right))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_slope1_right))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
						hit_reflected += 1;
					}
					#endregion
					
					
					//NEW SLOPE LEFT
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) && ((hspd != 0) && (vspd != 0))
					{
					
						if (place_meeting(x+(hspd),y,obj_newslope_left))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_newslope_left))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
						hit_reflected += 1;
					}
					#endregion
			
			
					//NEWSLOPE RIGHT-SHIELD
					#region
					//bouncing off right side
					if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((hspd == 0) or (vspd == 0))
					{
						x -= hspd;
						y -= vspd;
						vspd = -vspd;
						hspd = -hspd;
						
						
						if (charge <= 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_uncharged_up;
							}
						}
						else if (charge > 0)
						{
							if (vspd == 0) && (hspd > 0)
							{
							sprite_index = spr_SHIELD_charged_right
							}
							else if (vspd == 0) && (hspd < 0)
							{
							sprite_index = spr_SHIELD_charged_left;
							}
							else if (vspd > 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_down;
							}
							else if (vspd < 0) && (hspd == 0)
							{
							sprite_index = spr_SHIELD_charged_up;
							}
						}
					
						hit_reflected += 1;
					}
					else if (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && ((hspd != 0) && (vspd != 0))
					{
					
					
					
						if (place_meeting(x+(hspd),y,obj_newslope_right))
						{
							x -= hspd;
							hspd = -hspd;
						}
					
						if (place_meeting(x,y+(vspd),obj_newslope_right))
						{
							y -= vspd;
							vspd = -vspd;
						}
					
					
						if (charge <= 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_uncharged_leftup;
							}
						}
						else if (charge > 0)
						{
							if (hspd > 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_rightdown;
							}
							else if (hspd < 0) && (vspd > 0)
							{
							sprite_index = spr_SHIELD_charged_leftdown;
							}
							else if (hspd > 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_rightup;
							}
							else if (hspd < 0) && (vspd < 0)
							{
							sprite_index = spr_SHIELD_charged_leftup;
							}
						}
					
						hit_reflected += 1;
					}
					#endregion
					
					
				}


}
