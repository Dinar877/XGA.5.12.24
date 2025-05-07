// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bullet_step(){
	
	if (reflect_limit < 0) && (started1 = 0)
	{
		x -= hspd;
		y -= vspd;
		hspd = 0;
		vspd = 0;
		started1 = 1;
		sprite_index = spr_bullet_hit_spread;
	}





	subimage += (1/room_speed)*60

	//the collision lines that check for collisions between the bullet and different objects, one bullet placement in front and behind the bullet
	collisionline_forward_block = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_block,false,false)
	collisionline_backward_block = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_block,false,false)

	collisionline_forward_blockx2 = collision_line(x,y,x+(hspd*2),y+(vspd*2),obj_block,false,false)
	collisionline_backward_blockx2 = collision_line(x,y,x-(hspd*2),y-(vspd*2),obj_block,false,false)



	collisionline_forward_slopeLeft = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_slope1_left,false,false)
	collisionline_backward_slopeLeft = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_slope1_left,false,false)

	collisionline_forward_slopeRight = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_slope1_right,false,false)
	collisionline_backward_slopeRight = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_slope1_right,false,false)


	collisionline_forward_NEWslopeLeft = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_newslope_left,false,false)
	collisionline_backward_NEWslopeLeft = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_newslope_left,false,false)

	collisionline_forward_NEWslopeRight = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_newslope_right,false,false)
	collisionline_backward_NEWslopeRight = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_newslope_right,false,false)

	
	



	collisionline_forward_enemy = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies,true,false)
	collisionline_backward_enemy = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies,true,false)

	collisionline_forward_enemy_nohit = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies_nohit,true,false)
	collisionline_backward_enemy_nohit = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies_nohit,true,false)


	//enemies-in front of bullet
	if (collisionline_forward_enemy) && (started1 <= 0)
	{
		while(!place_meeting(x+sign(hspd),y+sign(vspd),obj_link_enemies)) && (collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies,false,false)) && ((hspd != 0) or (vspd != 0))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	}
	//enemies-behind bullet
	if (collisionline_backward_enemy) && (started1 <= 0)
	{	
		while(!place_meeting(x-sign(hspd),y-sign(vspd),obj_link_enemies)) && (collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies,false,false)) && ((hspd != 0) or (vspd != 0))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}
	}

	//enemies- no hit
	if (collisionline_forward_enemy_nohit) && (enemy_nohit == 0)
	{
		enemy_nohit = 1;	
		while(!place_meeting(x+sign(hspd),y+sign(vspd),obj_link_enemies_nohit)) && (collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies_nohit,false,false)) && ((hspd != 0) or (vspd != 0))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	}

	if (collisionline_backward_enemy_nohit) && (enemy_nohit == 0)
	{
		enemy_nohit = 1;	
		while(!place_meeting(x-sign(hspd),y-sign(vspd),obj_link_enemies_nohit)) && (collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies_nohit,false,false)) && ((hspd != 0) or (vspd != 0))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}
	}





	//if bullet is outside but near block (approaching a block)
	if ((collisionline_forward_block) 
	or (collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_slope1_left,false,false)) or (collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_slope1_right,false,false))
	or (collisionline_forward_NEWslopeLeft) or (collisionline_forward_NEWslopeRight))
	&& (hitnow3 = 0) && (hitnow2 = 0)
	{
	
		//near block
		while ((place_meeting(x+(hspd),y+(vspd),obj_block)) or (place_meeting(x+(hspd/2),y+(vspd/2),obj_block)))
		&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (!place_meeting(x,y,obj_block))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
		&& (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
	
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	
		//near slope left
		while (place_meeting(x+(hspd),y+(vspd),obj_slope1_left)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0) && (collisionline_forward_slopeLeft)
		&& (!place_meeting(x,y-1,obj_slope1_left))
		&& (!place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
		&& (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block)) && (!place_meeting(x,y,obj_block))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	
		//near slope right
		while (place_meeting(x+(hspd),y+(vspd),obj_slope1_right)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0) && (collisionline_forward_slopeRight)
		&& (!place_meeting(x,y-1,obj_slope1_right))
		&& (!place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right))
		&& (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block)) && (!place_meeting(x,y,obj_block))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	
		//near NEW slope left
		while (place_meeting(x+(hspd),y+(vspd),obj_newslope_left)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0) && (collisionline_forward_NEWslopeLeft)
		&& (!place_meeting(x,y-1,obj_newslope_left))
		&& (!place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_left)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left))
		&& (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block)) && (!place_meeting(x,y,obj_block))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	
		//near NEW slope right
		while (place_meeting(x+(hspd),y+(vspd),obj_newslope_right)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0) && (collisionline_forward_NEWslopeRight)
		&& (!place_meeting(x,y-1,obj_newslope_right))
		&& (!place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right))
		&& (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block)) && (!place_meeting(x,y,obj_block))
		{
			x += sign(hspd)
			y += sign(vspd)
		}
	
	}


	//if bullet is inside or past block
	if ((place_meeting(x-sign(hspd),y-sign(vspd),obj_block))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_right))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_left)) or (collisionline_backward_block) 
	or (collisionline_backward_slopeLeft) or (collisionline_backward_slopeRight) 
	or (collisionline_backward_NEWslopeLeft) or (collisionline_backward_NEWslopeRight)
	or (place_meeting(x,y,obj_block)) 
	or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
	or (place_meeting(x,y,obj_newslope_left)) or (place_meeting(x,y,obj_newslope_right))) 
	&& (hitnow3 = 0)
	{
		
		
		//IF no slopes detected, just block collided
		if (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		&& (!place_meeting(x,y,obj_newslope_right)) && (!place_meeting(x,y,obj_newslope_left))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left))
		{
		
			//if inside collision block completely (checks diagonally up and down on both sides, to see if either space is free of collision blocks. If no, then we're likely completely trapped inside one and can just while loop our way out.)
			while (place_meeting(x,y,obj_block)) && (position_meeting(x-hspd,y-vspd,obj_block))
			&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
			&& (((!place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block))) or ((!place_meeting(x-(hspd),y-(vspd),obj_block)) 
			&& (place_meeting(x+(hspd),y+(vspd),obj_block))) or ((place_meeting(x-(hspd),y-(vspd),obj_block)) && (!place_meeting(x+(hspd),y+(vspd),obj_block))))
			{
				x -= sign(hspd)
				y -= sign(vspd)
			}
	
			//if inside collision block completely and previous check didn't work, and there's a block behind the bullet
			while (place_meeting(x,y,obj_block)) && (place_meeting(x-(hspd),y-(vspd),obj_block)) && (place_meeting(x+(hspd),y+(vspd),obj_block))
			&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
			&& (position_meeting(x-hspd,y-vspd,obj_block))
			&& (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
			{
				x -= sign(hspd)
				y -= sign(vspd)
			}
		
			//for specific circumstances, like shooting bullets exactly at the edge of a block
			while (place_meeting(x,y,obj_block)) && (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (place_meeting(x+(hspd),y+(vspd),obj_block))
			&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
			&& (!position_meeting(x,y,obj_block))
			&& (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
			{
				x -= sign(hspd)
				y -= sign(vspd)
			}
		
			//for specific circumstances, like shooting bullets exactly at the ceiling of a platform, which would usually cause the bullets to teleport everywhere
			while (place_meeting(x,y,obj_block)) && (!place_meeting(x-(hspd),y-(vspd),obj_block)) && (place_meeting(x+(hspd),y+(vspd),obj_block))
			&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
			&& (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
			{
				x -= sign(hspd)
				y -= sign(vspd)
			}
	
			//if stuck between a corner (checks behind bullet and in front, and if we're inside a block at all)
			if (place_meeting(x,y,obj_block)) && (place_meeting(x-(hspd),y-(vspd),obj_block)) && (place_meeting(x+(hspd),y+(vspd),obj_block))
			&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
			{
				//if completely surrounded
				while (place_meeting(x,y,obj_block)) && (instance_place(bbox_right,y,obj_block)) && (instance_place(bbox_left,y,obj_block) && (instance_place(x,bbox_bottom,obj_block)) && (instance_place(x,bbox_top,obj_block)))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0) && (position_meeting(x,y,obj_block))
				&& (((position_meeting(x+hspd,y-vspd,obj_block)) && (!position_meeting(x-hspd,y+vspd,obj_block))) or ((!position_meeting(x+hspd,y-vspd,obj_block)) && (position_meeting(x-hspd,y+vspd,obj_block))) or (!position_meeting(x-hspd,y-vspd,obj_block)))
				&& (place_meeting(x-floor(hspd/2),y-floor(vspd/2),obj_block)) && (place_meeting(x-sign(hspd),y-sign(vspd),obj_block))
				{
					if (!position_meeting(x+hspd,y-vspd,obj_block)) && (position_meeting(x-hspd,y+vspd,obj_block)) && (position_meeting(x-hspd,y-vspd,obj_block))
					{
						x+= sign(hspd)
						y-= sign(vspd)
					}
					else if (!position_meeting(x-hspd,y+vspd,obj_block)) && (position_meeting(x+hspd,y-vspd,obj_block)) && (position_meeting(x-hspd,y-vspd,obj_block))
					{
						x-= sign(hspd)
						y+= sign(vspd)
					}
					else if (!position_meeting(x-hspd,y-vspd,obj_block))
					{
						x-= sign(hspd)
						y-= sign(vspd)
					}
					else if (collisionline_backward_block) && (position_meeting(x,y,obj_block))
					{
						x-= sign(hspd)
						y-= sign(vspd)
					}
				}
		
				//if inside collision block but not totally surrounded (checks behind bullet and in front, and if we're inside a block at all)
				while (place_meeting(x,y,obj_block)) && (place_meeting(x-(hspd),y-(vspd),obj_block)) && (place_meeting(x+(hspd),y+(vspd),obj_block))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
				&& (position_meeting(x-hspd,y-vspd,obj_block))
				&& (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
				{
					x -= sign(hspd)
					y -= sign(vspd)
				}
		
				//if trapped between 2 blocks vertically
				while (place_meeting(x,y,obj_block)) && (instance_place(x,bbox_bottom,obj_block)) && (instance_place(x,bbox_top,obj_block))
				&& ((hspd != 0)) && (hitnow3 = 0) && (position_meeting(x,y,obj_block))
				{
					if (!instance_place(bbox_right,y,obj_block))
					{
						x++
					}
					else if (!instance_place(bbox_left,y,obj_block))
					{
						x--
					}
					else if (instance_place(bbox_left,y,obj_block)) && (instance_place(bbox_right,y,obj_block))
					{
						x-= sign(hspd)
					}
				}
		
				//if trapped between 2 blocks horizontally
				while (place_meeting(x,y,obj_block)) && (instance_place(bbox_right,y,obj_block)) && (instance_place(bbox_left,y,obj_block))
				&& ((vspd != 0)) && (hitnow3 = 0) && (position_meeting(x,y,obj_block))
				{
					if (!instance_place(x,bbox_bottom,obj_block))
					{
						y++
					}
					else if (!instance_place(x,bbox_top,obj_block))
					{
						y--
					}
					else if (instance_place(x,bbox_bottom,obj_block)) && (instance_place(x,bbox_top,obj_block))
					{
						y-= sign(vspd)
					}
				}
		
				//if ride side only is trapped inside block
				while (place_meeting(x,y,obj_block)) && (!instance_place(bbox_left,y,obj_block)) && (instance_place(bbox_right,y,obj_block))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
				{
					x--
				}
		
				//if left side only is trapped inside block
				while (place_meeting(x,y,obj_block)) && (!instance_place(bbox_right,y,obj_block)) && (instance_place(bbox_left,y,obj_block))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
				{
					x++
				}
		
				//if bottom side only is trapped inside block
				while (place_meeting(x,y,obj_block)) && (!instance_place(x,bbox_top,obj_block)) && (instance_place(x,bbox_bottom,obj_block))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
				{
					y--
				}
		
				//if top side only is trapped inside block
				while (place_meeting(x,y,obj_block)) && (!instance_place(x,bbox_bottom,obj_block)) && (instance_place(x,bbox_top,obj_block))
				&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
				{
					y++
				}
			}
		
		}
	
	
		//if past slope left
		while (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_left)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (!place_meeting(x,y-1,obj_slope1_left))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}	
	
		//if inside slope left
		while ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y-1,obj_slope1_left))
		{
			y --;
		}
	
		//if past slope right
		while (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_right)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (!place_meeting(x,y-1,obj_slope1_right))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}	
	
		//if inside slope right
		while ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y-1,obj_slope1_right))
		{
			y --;
		}
		
		
		
		
		
		
		
		//if past NEW slope left
		while (place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_left)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (!place_meeting(x,y-1,obj_newslope_left))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}	
	
		//if inside NEW slope left
		while ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y-1,obj_newslope_left))
		{
			y --;
		}
	
		//if past NEW slope right
		while (place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_right)) && ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (!place_meeting(x,y-1,obj_newslope_right))
		&& (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right))
		{
			x -= sign(hspd)
			y -= sign(vspd)
		}	
	
		//if inside NEW slope right
		while ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y-1,obj_newslope_right))
		{
			y --;
		}
		
	}









	////If one pixel away from a collision block or slope, run the scripts that handle reflection beam code (if the upgrade is available) and  play the beam hit sound effects
	if (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
	or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
	or (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left)) //^forwards
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_block))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_right))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_slope1_left))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_right))
	or (place_meeting(x-sign(hspd),y-sign(vspd),obj_newslope_left)) //^backwards
	or (place_meeting(x+sign(hspd),y-sign(vspd),obj_block))
	or (place_meeting(x+sign(hspd),y-sign(vspd),obj_slope1_right))
	or (place_meeting(x+sign(hspd),y-sign(vspd),obj_slope1_left))
	or (place_meeting(x+sign(hspd),y-sign(vspd),obj_newslope_right))
	or (place_meeting(x+sign(hspd),y-sign(vspd),obj_newslope_left)) //^opposite horizontal and vertical speed directions
		{
			if (instance_exists(object_player2_0_sprites))
			{
				id.depth = object_player2_0_sprites.depth-1
			}
		
			if (global.beam_homing_available = 1) && (hit_reflected < 2)
			{
				if (global.beam_shield_available = 1)
				{
					shield_active = 1
				}
				else shield_active = 0;
			
				if (global.beam_burn_available = 0) && (global.beam_shield_available = 0)
				{
					instance_create_depth(x,y,id.depth,obj_homing_bulletHit)
					audio_stop_sound(snd_beam2_noeffect)
					audio_play_sound(snd_beam2_noeffect,1000,false,global.sfx_volume);
				}
				else if (global.beam_shield_available = 1) && (global.beam_burn_available = 0)
				{
					instance_create_depth(x,y,id.depth,obj_shield_bulletHit)
					audio_stop_sound(snd_beam2_noeffect)
					audio_play_sound(snd_beam2_noeffect,1000,false,global.sfx_volume);
				}
				else if (global.beam_burn_available = 1)
				{
					if (charge = 0)
					{
						var instbulletimpact = instance_create_depth(x,y,id.depth,obj_burnbeam_explosion_uncharged);
					}
					else if (charge = 1)
					{
						var instbulletimpact = instance_create_depth(x,y,id.depth,obj_burnbeam_explosion_charged);
					}
					
					audio_stop_sound(snd_beamexplosion)
					audio_stop_sound(snd_beamexplosion1)
					audio_stop_sound(snd_beamexplosion2)
					var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
				}
			
				bullet_bounceoff()

			}
			else if (global.beam_homing_available = 0)
			{
				hitnow1 = 1;
				hitnow2 = 1;
			}
		
			if (global.beam_shield_available = 0)
			{
				shield_active = 0	
			}
		}
	
	//if we've got the reflection beam but the bullets have bounced enough times
	if ((place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
	or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
	or (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left))) 
	&& (hit_reflected >= 2)
		{
			hitnow1 = 1;
			hitnow2 = 1;
		}

	//if bullets have bounced enough times, set this variable to true so that later wh destroy the bullets
	if (hitnow1) && (hitnow2)
	{
		hitnow3 = 1;	
	}

	//change image angle for hit effect
	if (hitnow3 > 0) && (started1 <= 0)
	{
		image_angle = round(random_range(0,360))
	}

	




	//if nothing in the way, keep adding the hspd and vspd speed values to our bullet's x and y values
	if (enemy_contact != 1) && (started1 = 0) && (shootlimit = 1) && !(collisionline_forward_block) && (enemy_nohit <= 0) 
	&& (!collisionline_forward_enemy) && (!collisionline_forward_enemy_nohit) && (!collisionline_backward_enemy) && (!collisionline_backward_enemy_nohit)
	 && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_block))
	 && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left))
	 && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_right)) && (!place_meeting(x+sign(hspd),y+sign(vspd),obj_newslope_left))
	{
	    x += hspd;
	    y += vspd;
	}
	else if ((enemy_contact = 1) or (collisionline_forward_enemy) or (collisionline_forward_enemy_nohit) or (collisionline_backward_enemy) or (collisionline_backward_enemy_nohit)) && (enemy_nohit <= 0) /// else if we've hit an enemy
	{
	    hspd = 0;
	    vspd = 0;   
		if (global.beam_shield_available = 0)
		{
			if (global.beam_burn_available = 0) && (global.beam_spread_available = 0) && (global.beam_homing_available = 0) && (global.beam_shield_available = 0)
			{
				if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
			        {
			        sprite_index = spr_bullet_hit;
			        started1 = 1;
			        }
			        if (global.upgrade_charge = 1) && (charge = 0) && (started1 = 0)
			        {
			        sprite_index = spr_charge1_bullet_hit;
			        started1 = 1;
			        }
			        if (global.upgrade_charge = 1) && (charge = 1) && (started1 = 0)
			        {
			        sprite_index = spr_charge2_bullet_hit;
			        started1 = 1;
			        }
			}
				if (global.beam_spread_available = 1) && (charge = 0) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
					{
					sprite_index = spr_bullet_hit_spread;
					image_angle = round(random_range(image_angle = 40,image_angle = -40));
			        started1 = 1;	
					}
					else if (global.beam_spread_available = 1) && (charge = 1) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
					{
					sprite_index = spr_bullet_hit_spread;
			        started1 = 1;	
					}
				if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0)
					{
						sprite_index = spr_explosion5;
						image_angle = random_range(0,360)
				        started1 = 1;	
					}
					else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0)
					{
						sprite_index = spr_explosion6;
						image_angle = random_range(0,360)
				        started1 = 1;	
					}
				if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_explosion5;
						image_angle = random_range(0,360)
				        started1 = 1;	
					}
					else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_explosion6;
						image_angle = random_range(0,360)
				        started1 = 1;	
					}
				if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_bullet_hit_homing;
				        started1 = 1;	
					}
					else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_bullet_hit_homing;
				        started1 = 1;	
					}
		}
		else if (global.beam_shield_available = 1)
		{
					if (started1 = 0) && (global.beam_burn_available = 0)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_bullet_hit_shield;
					        started1 = 1;	
							audio_stop_sound(snd_beam2_noeffect)
							audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
						}	
						else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 0)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_explosion5;
							image_angle = random_range(0,360)
					        started1 = 1;	
							audio_stop_sound(snd_beamexplosion)
							audio_stop_sound(snd_beamexplosion1)
							audio_stop_sound(snd_beamexplosion2)
							var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
						}
						else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 1)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_explosion6;
							image_angle = random_range(0,360)
					        started1 = 1;	
							audio_stop_sound(snd_beamexplosion)
							audio_stop_sound(snd_beamexplosion1)
							audio_stop_sound(snd_beamexplosion2)
							var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
						}	
		}
	}
	else if (enemy_nohit > 0) && (started1 <= 0) /// else if we've hit a "no hit effect" enemy
	{
		audio_stop_sound(snd_beam1_noeffect)
		audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume)
		hspd = 0;
		vspd = 0;
		sprite_index = spr_bullet_hit_noeffect;
	    started1 = 1;	
	}

	//if bullet is in right place and the "destroy now" variable is true
	if (hitnow3 > 0) && (enemy_nohit <= 0)
	{
			if (global.beam_shield_available = 0)
			{
				if (global.beam_burn_available = 0) && (global.beam_spread_available = 0) && (global.beam_homing_available = 0)
				{
						hspd = 0;
				        vspd = 0;
						if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
				        {
					        sprite_index = spr_bullet_hit;
					        started1 = 1;
							audio_stop_sound(snd_beam1_noeffect)
							audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume);
					
				        }
				        if (global.upgrade_charge = 1) && (charge = 0) && (started1 = 0)
				        {
					        sprite_index = spr_charge1_bullet_hit;
					        started1 = 1;
							audio_stop_sound(snd_beam1_noeffect)
							audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume);
				        }
				        if (global.upgrade_charge = 1) && (charge = 1) && (started1 = 0)
				        {
					        sprite_index = spr_charge2_bullet_hit;
					        started1 = 1;
							audio_stop_sound(snd_beam1_noeffect)
							audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume);
				        }
				}
				if (global.beam_spread_available = 1) && (charge = 0) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
					{
						sprite_index = spr_bullet_hit_spread;
						image_angle = round(random_range(image_angle = 40,image_angle = -40));
				        started1 = 1;	
						audio_stop_sound(snd_beam2_noeffect)
						audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
					}
					else if (global.beam_spread_available = 1) && (charge = 1) && (started1 = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
					{
						sprite_index = spr_bullet_hit_spread;
				        started1 = 1;	
						audio_stop_sound(snd_beam2_noeffect)
						audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
					}
				if (global.beam_burn_available = 1) && (charge = 0) && (started1 = 0)
					{
						sprite_index = spr_explosion5;
						image_angle = random_range(0,360)
				        started1 = 1;
						audio_stop_sound(snd_beamexplosion)
						audio_stop_sound(snd_beamexplosion1)
						audio_stop_sound(snd_beamexplosion2)
						var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
					}
					else if (global.beam_burn_available = 1) && (charge = 1) && (started1 = 0)
					{
						sprite_index = spr_explosion6;
						image_angle = random_range(0,360)
				        started1 = 1;	
						audio_stop_sound(snd_beamexplosion)
						audio_stop_sound(snd_beamexplosion1)
						audio_stop_sound(snd_beamexplosion2)
						var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
					}
				if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_explosion5;
						image_angle = random_range(0,360)
				        started1 = 1;	
						audio_stop_sound(snd_beamexplosion)
						audio_stop_sound(snd_beamexplosion1)
						audio_stop_sound(snd_beamexplosion2)
						var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
					}
					else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 1)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_explosion6;
						image_angle = random_range(0,360)
				        started1 = 1;	
						audio_stop_sound(snd_beamexplosion)
						audio_stop_sound(snd_beamexplosion1)
						audio_stop_sound(snd_beamexplosion2)
						var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
					}
				if (charge = 0) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_bullet_hit_homing;
				        started1 = 1;	
						audio_stop_sound(snd_beam2_noeffect)
						audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
					}
					else if (charge = 1) && (started1 = 0) && (global.beam_homing_available = 1) && (global.beam_burn_available = 0)
					{
						x += hspd/2;
						y += vspd/2;
						hspd = 0;
				        vspd = 0;
						sprite_index = spr_bullet_hit_homing;
				        started1 = 1;	
						audio_stop_sound(snd_beam2_noeffect)
						audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
					}
			}
			else if (global.beam_shield_available = 1)
			{
						if (started1 = 0) && (global.beam_burn_available = 0)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_bullet_hit_shield;
					        started1 = 1;	
							audio_stop_sound(snd_beam2_noeffect)
							audio_play_sound(snd_beam2_noeffect,1,false,global.sfx_volume);
						}	
						else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 0)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_explosion5;
							image_angle = random_range(0,360)
					        started1 = 1;	
							audio_stop_sound(snd_beamexplosion)
							audio_stop_sound(snd_beamexplosion1)
							audio_stop_sound(snd_beamexplosion2)
							var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
						}
						else if (started1 = 0) && (global.beam_burn_available = 1) && (charge = 1)
						{
							x += hspd/2;
							y += vspd/2;
							hspd = 0;
					        vspd = 0;
							sprite_index = spr_explosion6;
							image_angle = random_range(0,360)
					        started1 = 1;	
							audio_stop_sound(snd_beamexplosion)
							audio_stop_sound(snd_beamexplosion1)
							audio_stop_sound(snd_beamexplosion2)
							var snd1 = audio_play_sound(explosion_snd,1000,false,global.sfx_volume)
						}	
			}
	
	}
	
	

	//if the bullet has been "destroyed" in the animation and the last animation frame has played, now we really destroy the bullet for real
	if (image_index >= image_number-1) && (started1 = 1)
	{
	    instance_destroy();
	    started1 = 0;
	}
	
	

}