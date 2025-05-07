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
		
		instance_create(x,y,obj_slime_spike)
        instance_destroy()
		exit
    }

	
//spread beam
if (jeff)
    {
        x-= hspd;
        y-= vspd;
        hspd = 0;
        vspd = 0;
        started1 = 1;
       
	    instance_create(x,y,obj_slime_spike)
        instance_destroy()
		exit
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
else if (enemy_contact = 1)
{
    hspd = 0;
    vspd = 0;   
	started1 = 1;
	
		instance_create(x,y,obj_slime_spike)
        instance_destroy()
		exit
	
}

if ((((place_meeting(x,y,obj_bullet)) or (place_meeting(x,y,obj_bullet_side1)) or (place_meeting(x,y,obj_bullet_side2)))
&& (global.beam_shield_available = 1))) or (place_meeting(x,y,obj_shockwave_energycircle))
{
    hspd = 0;
    vspd = 0;   
	started1 = 1;
		instance_create(x,y,obj_slime_spike)
        instance_destroy()
		exit
}

if (sprite_index = spr_saw_bullet)
		{
			image_angle += 80
		}

enemy_hurt_player_code(2)