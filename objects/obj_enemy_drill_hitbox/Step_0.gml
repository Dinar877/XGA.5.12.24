/// @description Insert description here
// You can write your code in this editor
collisionline_player1 = collision_line(id.x,id.y,id.x,id.y+90,obj_player,false,true)
collisionline_block1 = collision_line(id.x,id.y,id.x,id.y+90,obj_block,false,true)

if (collisionline_player1 > 0) && (state = 0) && (global.invisibility <= 0)
{
	state = 1
	vspd = 3
	y += vspd
	instance_create_layer(id.x,id.y,layer_get_id("Inst_doors"),obj_enemy_drill_attackblur)
	
	audio_stop_sound(snd_drill)
	audio_play_sound(snd_drill,1000,false,global.sfx_volume)
	
	with(inst)
	{
		sprite_index = spr_driller_attack
		image_index = 0
	}
}


///GOING DOWN
#region
if (state = 1) && (((!place_meeting(id.x,id.y+vspd,obj_block)) && (!place_meeting(id.x,id.y,obj_block)))
&& ((!place_meeting(id.x,id.y+vspd,obj_slope1_left)) && (!place_meeting(id.x,id.y,obj_slope1_left)))
&& ((!place_meeting(id.x,id.y+vspd,obj_slope1_right)) && (!place_meeting(id.x,id.y,obj_slope1_right))))
{
	y += vspd
}
else if (state = 1) && (((place_meeting(id.x,id.y+vspd,obj_block)) && (!place_meeting(id.x,id.y,obj_block)))
or ((place_meeting(id.x,id.y+vspd,obj_slope1_left)) && (!place_meeting(id.x,id.y,obj_slope1_left)))
or ((place_meeting(id.x,id.y+vspd,obj_slope1_right)) && (!place_meeting(id.x,id.y,obj_slope1_right))))
{
	y += vspd
}
else if (state = 1) && ((place_meeting(id.x,id.y,obj_block))
or (place_meeting(id.x,id.y,obj_slope1_left))
or (place_meeting(id.x,id.y,obj_slope1_right)))
{
	vspd = 0
	y += 1
	state = 2
}

if (state = 2) && (inst > 0)
{
		var instbloc = (instance_position(id.x,id.bbox_top,obj_block)) or (instance_position(id.x,id.bbox_top,obj_slope1_left)) or (instance_position(id.x,id.bbox_top,obj_slope1_right))
		if (instbloc <= 0)
		{
			y += 1
		}
		else if (instbloc > 0)
		{
			if (instance_position(id.x,id.bbox_top,obj_block))
					{
							state = 3
							vspd = -3
							audio_stop_sound(snd_drill)
							
							if (instance_position(obj_player.x,id.y,obj_block)) && (!place_meeting(obj_player.x,id.y+8,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y += 8
							}
							else if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_block)) && (!instance_position(obj_player.x,obj_player.y+sprite_height+16,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
							}
							else waiting = 1
							
							with(inst)
							{
								image_index = 0
								image_angle += 180
								idleY = 0
							}
					}
			else if (instance_position(id.x,id.bbox_top,obj_slope1_left))
					{
							state = 3
							vspd = -3
							audio_stop_sound(snd_drill)
							
							if (instance_position(obj_player.x,id.y,obj_slope1_left)) && (!instance_position(obj_player.x,id.y+8,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y += 8
							}
							else if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left)) && (!instance_position(obj_player.x,obj_player.y+sprite_height+16,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
							}
							else
							{
								waiting = 1
								y += 16
							}
							
							with(inst)
							{
								image_index = 0
								image_angle += 180
								idleY = 0
							}
					}
			else if (instance_position(id.x,id.bbox_top,obj_slope1_right))
					{
							state = 3
							vspd = -3
							audio_stop_sound(snd_drill)
							
							if (instance_position(obj_player.x,id.y,obj_slope1_right)) && (!instance_position(obj_player.x,id.y+8,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y += 8
							}
							else if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_right)) && (!instance_position(obj_player.x,obj_player.y+sprite_height+16,obj_enemy_drill_hitbox))
							&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
							}
							else
							{
								waiting = 1
								y += 16
							}
							
							with(inst)
							{
								image_index = 0
								image_angle += 180
								idleY = 0
							}
					}
		}
	
	
}

//if needs more time to spawn because if it spawned, it'd reach a height where the player couldn't get past....
if (waiting = 1) && (inst > 0)
{
		if (!position_meeting(inst.x,inst.bbox_top,obj_block)) && (place_meeting(inst.x,inst.y,obj_block))
		{
			while (!position_meeting(inst.x,inst.bbox_top,obj_block)) && (place_meeting(inst.x,inst.y,obj_block))
			{
				y++	
				inst.y++
			}
		}
		
		if (!position_meeting(inst.x,inst.bbox_top,obj_slope1_left)) && (place_meeting(inst.x,inst.y,obj_slope1_left))
		{
			while (!position_meeting(inst.x,inst.bbox_top,obj_slope1_left)) && (place_meeting(inst.x,inst.y,obj_slope1_left))
			{
				y++
				inst.y++
			}
		}
		
		if (!position_meeting(inst.x,inst.bbox_top,obj_slope1_right)) && (place_meeting(inst.x,inst.y,obj_slope1_right))
		{
			while (!position_meeting(inst.x,inst.bbox_top,obj_slope1_right)) && (place_meeting(inst.x,inst.y,obj_slope1_right))
			{
				y++	
				inst.y++
			}
		}
		
		//block
		if (instance_position(obj_player.x,id.y,obj_block)) && (!instance_position(obj_player.x,id.y+8,obj_enemy_drill_hitbox))
		&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
		&& (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left)) && (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left))
							{
								x = obj_player.x
								y += 8
								waiting = 0
							}
		else if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_block)) && (!instance_position(obj_player.x,obj_player.y+sprite_height+16,obj_enemy_drill_hitbox))
		&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
		&& (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left)) && (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
								waiting = 0
							}
		//slope left
		if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_left)) && (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_enemy_drill_hitbox))
		&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
								waiting = 0
							}
		//slope right
		if (instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_slope1_right)) && (!instance_position(obj_player.x,obj_player.bbox_bottom+8,obj_enemy_drill_hitbox))
		&& (!place_meeting(obj_player.x,obj_player.y-sprite_height,obj_block)) && (!collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y-70,obj_block,false,true))
							{
								x = obj_player.x
								y = obj_player.y+sprite_height+16
								waiting = 0
							}
}
#endregion

///GOING UP
if (shoottimer < 1) && (state = 3) && (waiting = 0)
{
	if (spawntimer >= 1)
	{
		instance_create_depth(id.x,id.y-16,id.depth-1,obj_chunk_slow)
		instance_create_depth(id.x,id.y-16,id.depth-1,obj_chunk_slow)
		instance_create_depth(id.x,id.y-16,id.depth-1,obj_chunk_slow)
		
		spawntimer = 0
	}
	else spawntimer += 0.7
	shoottimer += (1/room_speed)/2
}
else if (shoottimer >= 1) && (state = 3)
{
	audio_stop_sound(snd_drill)
	audio_play_sound(snd_drill,1000,false,global.sfx_volume)
	
	state = 4
	shoottimer = 0
	spawntimer = 0
}

if (state = 4) && ((place_meeting(id.x,id.y,obj_block)) or (place_meeting(id.x,id.y,obj_slope1_left)) or (place_meeting(id.x,id.y,obj_slope1_right)))
{
	vspd = -3
	y += vspd 
}
else if (state = 4) && ((!place_meeting(id.x,id.y,obj_block)) && (!place_meeting(id.x,id.y,obj_slope1_left)) && (!place_meeting(id.x,id.y,obj_slope1_right)))
{
	vspd = -3
	y += vspd 
	state = 5
}

if (state = 5) && (!place_meeting(id.x,id.y,obj_block)) && (!place_meeting(id.x,id.y+vspd,obj_block))
{
	y += vspd
}
else if (state = 5) && (place_meeting(id.x,id.y+vspd,obj_block))
{
	y += vspd
	vspd = 0
	state = 6
}



if (state = 6)
{
		if (instance_position(id.x,id.bbox_top,obj_block))
		{
			y += 1
		}
		else if (!instance_position(id.x,id.bbox_top,obj_block))
		{
			state = 0
			vspd = 3
			audio_stop_sound(snd_drill)				
							
			with(inst)
				{
					image_index = 0
					image_angle += 180
					sprite_index = spr_driller_idle	
					idleY = -5
				}
		}	
}
