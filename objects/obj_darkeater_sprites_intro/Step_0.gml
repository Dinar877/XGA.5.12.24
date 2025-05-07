/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

x = inst2.x;
y = inst2.y;


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1)
&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dead_begin = 0) && (deathanim <= 0)
{
    global.hurt = 1;
	global.healthKiller = 2.5;
}

if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

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
}

State_machine_execute()	