if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	audio_pause_sound(snd_bug_crawling)
	audio_pause_sound(snd_xga_armbust_fire2)
	exit;	
}
else
{	
	audio_resume_sound(snd_xga_armbust_fire2)
	audio_resume_sound(snd_bug_crawling)
}

if (instance_exists(inst2) > 0)
{
	x = inst2.x;
	y = inst2.y-15;
}
else
{
	instance_destroy()
	exit
}

//audio
if (instance_exists(obj_player))
{
	dist = point_distance(id.x,id.y,obj_player.x,obj_player.y)
	audio_emitter_gain(global.inst_audio_emitterID[inst_n], (10/dist) * global.sfx_volume)
}

//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(2)


//screw attack
if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= hp;
	if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
}

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

if (instance_place(x,y,obj_bullet))
{
    stay = 1;
    enemy_almost_hurt = 0;
	if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
	bullet_hurtenemycode(self)
}

if (instance_exists(inst2))
{
	xmin = inst2.x;
	xmax = xmin + (sprite_get_width(spr_scorpion_hitbox)/2);
	ymin = inst2.y;
	ymax = ymin + (sprite_get_height(spr_scorpion_hitbox)/2);
}

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
	}
    stay = 1;
    enemy_almost_hurt = 0;
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	audio_stop_sound(snd_xga_armbust_fire2);
	audio_stop_sound(snd_bug_crawling);
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
	
	with(inst2)
		{
			instance_destroy();
		}
	instance_destroy();
	exit
}

//player
if (hp > 0) && (instance_exists(obj_player)) && (instance_exists(inst2))
{

	with(inst2)
	{
		//checks for player
		inst_circle = collision_circle(x,y,110,obj_player,false,true)
	
		//on collision objects
		inst_collision = ((place_meeting(x,y+2,obj_block)) or (position_meeting(x+(facing*8),bbox_bottom+1,obj_block))
		or (place_meeting(x,y+(2),obj_slope1_right)) or (place_meeting(x,y+(2),obj_slope1_left))
		or (place_meeting(x,y+(2),obj_newslope_right)) or (place_meeting(x,y+(2),obj_newslope_left)))
	
		//checks blocks y+1 in front of us in current direction, no slopes allowed
		inst_collision2 = ((!position_meeting(x+(facing*8),bbox_bottom+1,obj_block)) && (!place_meeting(x,y+1,obj_block))
		&& (!place_meeting(x,y+(2),obj_slope1_right)) && (!place_meeting(x,y+(2),obj_slope1_left))
		&& (!place_meeting(x,y+(2),obj_newslope_right)) && (!place_meeting(x,y+(2),obj_newslope_left))
		&& (!position_meeting(x+(facing*1),bbox_bottom+1,obj_slope1_right)) && (!position_meeting(x+(facing*1),bbox_bottom+1,obj_slope1_left))
		&& (!position_meeting(x+(facing*2),bbox_bottom,obj_newslope_right)) && (!position_meeting(x+(facing*2),bbox_bottom,obj_newslope_left)))
	

		//check if on any slopes
		onSlope = ((place_meeting(x,y+(2),obj_slope1_right)) 
		or (place_meeting(x,y+(2),obj_slope1_left))
		or (place_meeting(x,y+(2),obj_newslope_right)) 
		or (place_meeting(x,y+(2),obj_newslope_left))) 
		
		//checks if we're on the edge of a platform
		inst_blockfree = (place_meeting(x,y+2,obj_block)) 
		&& (!onSlope)
		&& (((position_meeting(bbox_left,bbox_bottom+(1),obj_block)) && (!position_meeting(bbox_left+1,bbox_bottom+(1),obj_block)))
		or ((position_meeting(bbox_right,bbox_bottom+(1),obj_block)) && (!position_meeting(bbox_right-1,bbox_bottom+(1),obj_block))))
		
		
		//slope in front of us
		slopeInFront = ((place_meeting(x+facing,y,obj_slope1_left)) 
		or (place_meeting(x+facing,y,obj_slope1_right)) 
		or (place_meeting(x+facing,y,obj_newslope_left)) 
		or (place_meeting(x+facing,y,obj_newslope_right)))
		
		//block in front of us and no slope in front of us
		blockInFront = (place_meeting(x+(facing),y,obj_block)) && (!slopeInFront)
	
		//checks if we're inside another enemy and no blocks in range
		collision_othertoad = (place_meeting(id.x,id.y,obj_enemy_scorpion_hitbox))
	}

	State_machine_execute()
}
