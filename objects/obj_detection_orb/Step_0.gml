/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

image_angle += 1/2

if (place_meeting(x,y,obj_player)) && (global.darkeater_active = 0) && (global.invisibility <= 0)
{	
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
	}
}

//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

//enemy_hurt_player_code(3)



//bullet detection
if (instance_place(x,y,obj_bullet))
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
	}
}


//nuclearblast detection
if (instance_place(x,y,obj_explosion_random_big)) && (global.nuclearblast = 1)
{
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
	}	
}

//sword detection
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
	
	//player detected - spawn xga
	if (instance_exists(obj_xga_coords))
	{
		obj_xga_coords.timer_xga = 2
		global.darkeater_active = 1
	}	
}