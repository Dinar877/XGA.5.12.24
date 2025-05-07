/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (jump_now == 1) && (place_meeting(x,y,obj_block)) && (popout_now == 0)
{
	vspd = -4 + floor(vspdKiller);
	vspdKiller += 0.15;
	y = round(y) + vspd;
}
else if (!place_meeting(x,y,obj_block)) && (popout_now == 0)
{
	popout_now = 1;
}

if (vspd = 0) && (jump_now = 0) && (popout_now = 1) && (!place_meeting(x,y,obj_block))
{
	popout_now = 0	
}

if (jump_now == 1) && (!place_meeting(x,y+(vspd),obj_block)) && (popout_now = 1)
{
	vspd = -4 + floor(vspdKiller);
	vspdKiller += 0.15;
	y += vspd;
}

if (jump_now == 1) && (place_meeting(x,y+(vspd),obj_block)) && (popout_now = 1)
{
	while (place_meeting(x,y+(vspd),obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block))
	{
		y += sign(vspd);
	}
	
	if (place_meeting(x,y+1,obj_block))
	{
		vspd = 0;
		vspdKiller = 0;
		jump_now = 0;
		popout_now = 0
		
		audio_stop_sound(snd_rockimpact1)
		audio_play_sound(snd_rockimpact1,1000,false,global.sfx_volume)
		
		with(inst0)
		{
			jump_now = 0;
			sprite_index = spr_enemy_grounder_Idle;
		}	
	}
	else if (place_meeting(x,y-1,obj_block))
	{
		vspd = 0;
	}
}