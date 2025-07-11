/// @description Insert description here
// You can write your code in this editor

bob = collision_line(x,y,x+(hspd*1.2),y+(vspd*1.2),obj_block,true,false)
jeff = collision_line(x,y,x-(hspd*1.2),y-(vspd*1.2),obj_block,true,false)

if (bob)
{
    if !((place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) && (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)))
    {
        hspd = sign(hspd);
        vspd = sign(vspd);
    }
}

if ((place_meeting(x+sign(hspd),y+sign(vspd),obj_block)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_left)) or (place_meeting(x+sign(hspd),y+sign(vspd),obj_slope1_right)))
    {
        hspd = 0;
        vspd = 0;
        enemy_contact = 0;
		started1 = 1;
		
		if (sprite_index != spr_bullet_hit_shield)
		{
			sprite_index = spr_bullet_hit_shield;
			image_index = 0;
		}
		else
		{
			audio_stop_sound(snd_beam_normalhit)
			var snd = audio_play_sound(snd_beam_normalhit,1000,false,global.sfx_volume)
			instance_destroy()
			exit
		}
        
    }

	
//spread beam
if (jeff)
    {
        x-= hspd;
        y-= vspd;
        hspd = 0;
        vspd = 0;
        started1 = 1;
       
	    if (sprite_index != spr_bullet_hit_shield)
		{
			sprite_index = spr_bullet_hit_shield;
			image_index = 0;
		}
		else
		{
			audio_stop_sound(snd_beam_normalhit)
			var snd = audio_play_sound(snd_beam_normalhit,1000,false,global.sfx_volume)
			instance_destroy()
			exit
		}
    }


if (image_index >= image_number-1) && (started1 = 1)
{
    instance_destroy();
    started1 = 0;
	exit;
}




//spawn enemy bulletshields
if (spawntimer1 < 1)
{
	spawntimer1 += ((1/60)*18);	
}
else if (spawntimer1 >= 1)
{
	spawntimer1 = 0;
	instance_create_depth(x,y,depth+1,obj_enemy_white_soldier_bulletshield);
}






if (enemy_contact != 1) && (started1 = 0) && (shootlimit = 1)
{
    x += hspd;
    y += vspd;
}
else if (enemy_contact = 1)
{
    hspd = 0;
    vspd = 0;   
	started1 = 1;
	
	if (sprite_index != spr_bullet_hit_shield)
	{
		sprite_index = spr_bullet_hit_shield;
		image_index = 0;
	}
	else
	{
		audio_stop_sound(snd_beam_normalhit)
		var snd = audio_play_sound(snd_beam_normalhit,1000,false,global.sfx_volume)
		instance_destroy()
		exit
	}
	
}



enemy_hurt_player_code(3)