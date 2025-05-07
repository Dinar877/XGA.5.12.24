/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (hit = 0)
{
	
	if (direction1 > 0)
	{
	    image_angle += 10;
	    x = (x+(startx-adder1));
	    if (adder1 < 1)
	    {
	    adder1 += 0.1;
	    }
	}
	if (direction1 <= 0)
	{
	    image_angle -= 10;
	    x = (x-(startx-adder1));
	    if (adder1 < 1)
	    {
	    adder1 += 0.1;
	    }
    
	}

	if (direction2 > 0)
	{
		y = (y +(starty+adder2));
	    adder2 += 0.15;	
	}
	else if (direction2 <= 0)
	{
		y = (y +(-starty+adder2));
	    adder2 += 0.15;	
	}

}
if ((place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))) && (hit = 0)
{
    hit = 1
	adder1 = 1
	adder2 = 0
}

if (hit = 1) && (sprite_index != spr_sword_sparks)
{
    sprite_index = spr_sword_sparks
	image_index = 0
	var snd = audio_play_sound(snd_electricity,1001,false,global.sfx_volume)
	audio_sound_gain(snd,0,1200)
}

if (sprite_index = spr_sword_sparks) && (round(image_index) >= image_number-1)
{
    instance_destroy()
}


if ((((place_meeting(x,y,obj_bullet)) or (place_meeting(x,y,obj_bullet_side1)) or (place_meeting(x,y,obj_bullet_side2)))
&& (global.beam_shield_available = 1))) or (place_meeting(x,y,obj_shockwave_energycircle))
{
	instance_destroy()
}

enemy_hurt_player_code(1)
