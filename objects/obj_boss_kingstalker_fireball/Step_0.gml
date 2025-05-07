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
		if (sprite_index != spr_explosion7)
		{
			sprite_index = spr_explosion7;
			
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 6;
					yshakeno = 2;
			
					audio_stop_sound(snd_beamexplosion)
					audio_stop_sound(snd_beamexplosion1)
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
					//snd = audio_sound_gain(snd,0.5,0)
				}
			}
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
        
		if (sprite_index != spr_explosion7)
		{
			sprite_index = spr_explosion7;
			
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
			
					audio_stop_sound(snd_beamexplosion)
					audio_stop_sound(snd_beamexplosion1)
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
					//snd = audio_sound_gain(snd,0.5,0)
				}
			}
		}
		
		
		image_angle = round(random_range(image_angle = 40,image_angle = -40));
    }


if (image_index >= image_number-1) && (started1 = 1)
{
    instance_destroy();
    started1 = 0;
	exit
}

if (enemy_contact != 1) && (started1 = 0) && (shootlimit = 1)
{
    x += hspd;
    y += vspd;
}


if ((((place_meeting(x,y,obj_bullet)) or (place_meeting(x,y,obj_bullet_side1)) or (place_meeting(x,y,obj_bullet_side2)))
&& (global.beam_shield_available = 1))) or (place_meeting(x,y,obj_shockwave_energycircle))
{
    hspd = 0;
    vspd = 0;   
	started1 = 1;
	if (sprite_index != spr_explosion7)
		{
			sprite_index = spr_explosion7;
			
			with(obj_camera)
			{
				if (yshake <= 0)
				{
					yshake = 2;
					yshakeno = 3;
			
					audio_stop_sound(snd_beamexplosion)
					audio_stop_sound(snd_beamexplosion1)
					var snd = audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
					//snd = audio_sound_gain(snd,0.5,0)
				}
			}
		}
	
	instance_destroy()
}

enemy_hurt_player_code(5)