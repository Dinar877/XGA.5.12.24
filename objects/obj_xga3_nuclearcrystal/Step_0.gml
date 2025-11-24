/// @description Insert description here
// You can write your code in this editor

//Debris_bouncing()


enemy_hurt_player_code(3)

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (instance_place(x,y,obj_nuclearblast_scrneffect)) && (enemy_hurt <= 0)
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 1;
	}
	
	hp -= 70;
    stay = 1;
    enemy_almost_hurt = 0;
	
	if (hp < 70) && (hp >= 30) && (sprite_index != spr_nuclearblast_crystal_1)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		
		sprite_index = spr_nuclearblast_crystal_1
		
		//snd
		audio_stop_sound(snd_glass_shatter)
		var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
		audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))
	}
	else if (hp < 30) && (sprite_index != spr_nuclearblast_crystal_2)
	{
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
		
		sprite_index = spr_nuclearblast_crystal_2
		
		//snd
		audio_stop_sound(snd_glass_shatter)
		var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
		audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))
	}
}

if (hp <= 0) or (place_meeting(x,y,object_player2_0_sprites))
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	
	//snd
	audio_stop_sound(snd_glass_shatter)
	var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))


	instance_destroy();
	exit;
}





ySpeed = floor(ySpeed+adder2);
var whichwayX = sign(xSpeed);
var whichwayY = sign(ySpeed);
var collisionLineXForwards = collision_line(x,y,x+xSpeed,y,obj_block,false,true);
var collisionLineXBackwards = collision_line(x,y,x-xSpeed,y,obj_block,false,true);
var collisionLineYForwards = collision_line(x,y,x,y+ySpeed,obj_block,false,true);
var collisionLineYBackwards = collision_line(x,y,x,y-ySpeed,obj_block,false,true);
	


	
if (hit = false)
{
	//X
	if (xSpeed != 0)
	{
		if (!collisionLineXForwards)
		{
			if (xSpeed > 0)
			{
				image_angle += rotSpeed;
			}
			else if (xSpeed < 0)
			{
				image_angle -= rotSpeed;
			}
			x = floor(x+xSpeed);
		}
		else if (collisionLineXForwards)
		{
			if (!place_meeting(x+sign(xSpeed),y,obj_block)) 
			&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
			&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
			{
				while (!place_meeting(x+sign(xSpeed),y,obj_block)) 
				&& (!place_meeting(x+sign(xSpeed),y,obj_slope1_left)) && (!place_meeting(x+sign(xSpeed),y,obj_slope1_right))
				&& (!place_meeting(x+sign(xSpeed),y,obj_newslope_left)) && (!place_meeting(x+sign(xSpeed),y,obj_newslope_right))
				{
					x += sign(xSpeed);
				}
			}
		}
	}

	//Y
	if (!collisionLineYForwards)
	{
		y = floor(y+ySpeed);
		adder2 += grav;	
				
		if (xSpeed == 0)
		{
			if (rotDir == 1)
			{
				image_angle += rotSpeed;
			}
			else if (rotDir == 0)
			{
				image_angle -= rotSpeed;
			}
		}
	}
	else if (collisionLineYForwards)
	{
		if (!place_meeting(x,y+sign(ySpeed),obj_block)) 
		&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
		&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
		{
			while (!place_meeting(x,y+sign(ySpeed),obj_block)) 
			&& (!place_meeting(x,y+sign(ySpeed),obj_slope1_left)) && (!place_meeting(x,y+sign(ySpeed),obj_slope1_right))
			&& (!place_meeting(x,y+sign(ySpeed),obj_newslope_left)) && (!place_meeting(x,y+sign(ySpeed),obj_newslope_right))
			{
				y += sign(ySpeed);
			}
		}
	}
		
}


//hit floor
if ((place_meeting(x,y+1,obj_block)) 
or (place_meeting(x,y+1,obj_slope1_left)) or (place_meeting(x,y+1,obj_slope1_right))
or (place_meeting(x,y+1,obj_newslope_left)) or (place_meeting(x,y+1,obj_newslope_right))) 
&& ((position_meeting(x,bbox_bottom+1,obj_block))
or (position_meeting(x,bbox_bottom+1,obj_slope1_left)) or (position_meeting(x,bbox_bottom+1,obj_slope1_right))
or (position_meeting(x,bbox_bottom+1,obj_newslope_left)) or (position_meeting(x,bbox_bottom+1,obj_newslope_right)))
&& (hit = false) 
&& (whichwayY > 0) //falling speed
{
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	
	//snd
	audio_stop_sound(snd_glass_shatter)
	var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))


	instance_destroy();
	exit;
}

//hit side
if ((place_meeting(x+sign(xSpeed),y,obj_block)) 
or (place_meeting(x+sign(xSpeed),y,obj_slope1_left)) or (place_meeting(x+sign(xSpeed),y,obj_slope1_right))
or (place_meeting(x+sign(xSpeed),y,obj_newslope_left)) or (place_meeting(x+sign(xSpeed),y,obj_newslope_right))) 
&& ((position_meeting(bbox_left-1,y,obj_block))
or (position_meeting(bbox_left-1,y,obj_slope1_left)) or (position_meeting(bbox_left-1,y,obj_slope1_right))
or (position_meeting(bbox_left-1,y,obj_newslope_left)) or (position_meeting(bbox_left-1,y,obj_newslope_right))
or (position_meeting(bbox_right+1,y,obj_block))
or (position_meeting(bbox_right+1,y,obj_slope1_left)) or (position_meeting(bbox_right+1,y,obj_slope1_right))
or (position_meeting(bbox_right+1,y,obj_newslope_left)) or (position_meeting(bbox_right+1,y,obj_newslope_right)))
&& (whichwayX != 0) //horizontal movement speed exists
{	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	
	//snd
	audio_stop_sound(snd_glass_shatter)
	var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))


	instance_destroy();
	exit;
}

//hit ceiling
if ((place_meeting(x,y-1,obj_block)) 
or (place_meeting(x,y-1,obj_slope1_left)) or (place_meeting(x,y-1,obj_slope1_right))
or (place_meeting(x,y-1,obj_newslope_left)) or (place_meeting(x,y-1,obj_newslope_right))) 
&& ((position_meeting(x,bbox_top-1,obj_block))
or (position_meeting(x,bbox_top-1,obj_slope1_left)) or (position_meeting(x,bbox_top-1,obj_slope1_right))
or (position_meeting(x,bbox_top-1,obj_newslope_left)) or (position_meeting(x,bbox_top-1,obj_newslope_right)))
&& (whichwayY < 0) //upwards speed
{
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_random);
	
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	instance_create(x, y, obj_breakable_crystal_piece);
	
	//snd
	audio_stop_sound(snd_glass_shatter)
	var sndycry = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_pitch(sndycry, 1 + (random_range(-0.05,0.05)))


	instance_destroy();
	exit;
}





