/// @description Insert description here
// You can write your code in this editor
if (direction1 > 0) && (hit == 0)
{
	x -= 3/2;  
	image_angle += 1/5;
    y = (y +(3-adder2));
    adder2 -= 0.1;
}
if (direction1 < 0) && (hit == 0)
{
    x -= 3/2;
	image_angle -= 1/5;
    y = (y +(3-adder2));
    adder2 -= 0.1;
}

if ((place_meeting(x,y,obj_block2)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit == 0) && (direction1 != 0)
{
    hit = 1;
}

if (hit = 1)
{
    instance_create_depth(x,y,id.depth-5,obj_explosion6_nohurt)
	instance_create_depth(x,y,id.depth-1,obj_bridge2_1)
	instance_create_depth(x,y,id.depth-1,obj_bridge2_2)
	audio_stop_sound(snd_metalcrash1);
	audio_play_sound(snd_metalcrash1,1,false,global.sfx_volume);
	instance_destroy()	
}