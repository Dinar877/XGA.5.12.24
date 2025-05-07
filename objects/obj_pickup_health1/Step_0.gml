if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


if (place_meeting(x,y,obj_player))
{
    instance_destroy();
    FadeNow = 0;
    global.pickup_health = 1;
	audio_stop_sound(snd_pickup1)
	audio_stop_sound(snd_pickup2)
	var snd = irandom_range(snd_pickup1,snd_pickup2)
	audio_play_sound(snd,1,false,global.sfx_volume)
}


//SPINNING
image_angle += 2



if FadeNow > 0 
{ 
	FadeNow -= 0.015; 
}
else if FadeNow <= 0
{
	FadeNow = 0.5;
}

if (!place_meeting(x+ranx,y,obj_block))
{
ranx = ranx * 0.8;
x += ranx;
}
if (!place_meeting(x,y+rany,obj_block))
{
rany = rany * 0.8;
y += rany;
}

