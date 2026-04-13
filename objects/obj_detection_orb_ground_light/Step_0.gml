/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.darkeater_active = 1)
{
	with(obj_detection_orb_ground_light)
	{
		instance_destroy()	
	}
	
	exit
}

if (place_meeting(x,y,obj_player)) && (global.darkeater_active = 0) && (global.invisibility <= 0)
&& (global.dead == 0) && (global.pierce_killswitch == 0)
{	
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
		
		global.sector_music_xga = global.sector_music;
	}
}

//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

//enemy_hurt_player_code(3)



//bullet detection
if (instance_place(x,y,obj_bullet))
&& (global.darkeater_active = 0)
&& (global.dead == 0) && (global.pierce_killswitch == 0)
{
    with((instance_place(x,y,obj_bullet)))
    {
        audio_stop_sound(snd_beam1_noeffect)
		audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume)
		hspd = 0;
        vspd = 0;
		sprite_index = spr_bullet_hit_noeffect;
        started1 = 1;	
        enemy_contact = 1;
    }
	
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
		
		global.sector_music_xga = global.sector_music
	}
}


//nuclearblast detection
if (instance_place(x,y,obj_nuclearblast_scrneffect)) && (global.nuclearblast = 1)
&& (global.darkeater_active = 0)
&& (global.dead == 0) && (global.pierce_killswitch == 0)
{
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
		
		global.sector_music_xga = global.sector_music
	}	
}

//shockwave detection
if (instance_place(x,y,obj_shockwave_energycircle)) && (global.shockwave = 1)
&& (global.darkeater_active = 0)
&& (global.dead == 0) && (global.pierce_killswitch == 0)
{
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
		
		global.sector_music_xga = global.sector_music
	}	
}

//sword detection
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
&& (global.darkeater_active = 0)
&& (global.dead == 0) && (global.pierce_killswitch == 0)
{
    sword_hurtenemycode_noeffect()
	
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
		
		global.sector_music_xga = global.sector_music
	}	
}