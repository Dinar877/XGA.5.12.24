/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}


if (instance_place(x,y,obj_bullet)) && (global.beam_shield_available = 1)
{
	instance_destroy()
	exit
}




//hurt player code
enemy_hurt_player_code(3)




if (hit = 0)
{
	
	if (direction1 > 0)
	{
	    image_angle += 10;
	    hspd = (startx-adder1);
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
		hspd = floor(hspd)
		x += hspd
	}
	if (direction1 <= 0)
	{
	    image_angle -= 10;
	    hspd = -(startx-adder1);
	    if (adder1 < 1)
	    {
			adder1 += 0.1;
	    }
		hspd = floor(hspd)
		x += hspd
    
	}

	if (direction2 > 0)
	{
		vspd = (starty+adder2);
	    adder2 += 0.3;	
		vspd = floor(vspd)
		y += vspd
	}
	else if (direction2 <= 0)
	{
		vspd = (-starty+adder2);
	    adder2 += 0.3;	
		vspd = floor(vspd)
		y += vspd
	}

}

if ((place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_block))) && (hit = 0)
{
    hit = 1
	adder1 = 1
	adder2 = 0
}

if (hit = 1) && (sprite_index != spr_explosion5_xga)
{
    sprite_index = spr_explosion5_xga
	audio_stop_sound(snd_beamexplosion)
	audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
}

if (sprite_index = spr_explosion5_xga) && (image_index >= image_number-1)
{
	instance_destroy()	
}