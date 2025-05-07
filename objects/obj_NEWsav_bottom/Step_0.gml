/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_savepillar_tower))
{
	exit;
}

if (FadeNow > 0)
{
	FadeNow -= 0.015;	
}
else if (FadeNow <= 0)
{
	FadeNow = 0.8;	
}



if (place_meeting(x,y-1,obj_player)) && (savebegin_timer < 1)
{
	savebegin_timer += 0.007;
}
if (place_meeting(x,y,obj_player)) && (savebegin_timer >= 1) && (ready == 1)
{
	global.saving = 1;
	savebegin_timer = 0;
	ready = 0;
	stopnow = 0;
}

if (!place_meeting(x,y,obj_player)) && (!instance_exists(obj_savepillar_tower)) && (savebegin_timer > 0)
{
	savebegin_timer -= 0.1;	
}