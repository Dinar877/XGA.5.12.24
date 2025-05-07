with(self)
{
//Get knocked back when hit player
if (hurtactive = 1) && (counter < 10)
{
    if (place_meeting(x+(-facing*3),y+1,obj_block)) && (!place_meeting(x+(-facing*3),y,obj_block)) && (!place_meeting(x+(facing*3),y,obj_block))
     && (!place_meeting(x+(-facing*3),y,obj_slope1_left)) && (!place_meeting(x+(facing*3),y,obj_slope1_left))
      && (!place_meeting(x+(-facing*3),y,obj_slope1_right)) && (!place_meeting(x+(facing*3),y,obj_slope1_right))
    {
    x += (-facing*2);
    }
    else if (!place_meeting(x+(-facing*3),y+1,obj_block)) or (place_meeting(x+(-facing*3),y,obj_block)) or (place_meeting(x+(facing*3),y,obj_block))
         or (!place_meeting(x+(-facing*3),y,obj_slope1_left)) or (!place_meeting(x+(facing*3),y,obj_slope1_left))
      or (!place_meeting(x+(-facing*3),y,obj_slope1_right)) or (!place_meeting(x+(facing*3),y,obj_slope1_right))
    {
    x += (facing*2);
    }
    counter += 1;
    change_direction = 0;
}
if (hurtactive = 1) && (counter >= 10)
{
    hurtactive = 0;
    counter = 0;
    change_direction = 0;
}

//transfer facing variable values from sprites to hitbox
with(instance_place(x,y,obj_sprites_toad))
{
    if (facing = 1)
    {
        with(instance_place(x,y,obj_hitbox_toad))
        {
            facing = 1;
        }
    }
    if (facing = -1)
    {
        with(instance_place(x,y,obj_hitbox_toad))
        {
            facing = -1;
        }
    }
}

//detect player in range
if (collision_circle(x,y,70,obj_player,false,true)) && (instance_place(x,y,obj_sprites_toad)) && (global.hurt = 0)
{
    if (position_meeting(x+(facing*15),y+11,obj_block)) && (hurtactive != 1)
    {
    with(instance_place(x,y,obj_sprites_toad))
    {
        go = 1;
    }
    }
}
else if (!collision_circle(x,y,70,obj_player,false,true)) && (instance_place(x,y,obj_sprites_toad)) or (global.hurt = 1)
{
    with(instance_place(x,y,obj_sprites_toad))
    {
        go = 0;
        started1 = 0;
        started2 = 0;
    }
}

//movement shit
with(instance_place(x,y,obj_sprites_toad))
{
    if (turning != 1) && (charge = 1) && (global.hurt = 0)
    {
        with(instance_place(x,y,obj_hitbox_toad))
        {    
                if (change_direction = 1) && (hurtactive = 0)
                {
                    if (facing = 1)
                    {
                    x += 5;
                    hspd = 5;
                    change_direction = 0;
                    }
                    if (facing = -1)
                    {
                    x -= 5;
                    hspd = -5;
                    change_direction = 0;
                    }
                }
                if (change_direction = 0) && (hurtactive = 0)
                {
                    x += hspd;
                    hspd = facing*5;
                    with(instance_place(x,y,obj_sprites_toad))
                        {
                            //turning = 0;
                        }
                }
        }
    }
    else if (turning = 1) && (charge = 0) or (global.hurt = 1)
    {
        with(instance_place(x,y,obj_hitbox_toad))
        {
            hspd = 0;
        }
    }
}

//don't go into/off collision blocks-left
if (facing = 1) && (hurtactive = 0)
{
    if (place_meeting(x+(5),y,obj_block)) or (position_empty(x+(15),y+13)) or (place_meeting(x+(5),y,obj_slope1_right)) or (place_meeting(x+(5),y,obj_slope1_left)) or (global.hurt = 1)
    {
        if (change_direction = 0)
        {
        change_direction = 1;
        hspd = 0;
        with(instance_place(x,y,obj_sprites_toad))
        {
        if ((charge = 1) or (go = 1)) && (facing = 1)
        {
        charge = 0;
        go = 0;
        started1 = 0;
        }
        }
        }
    }
}

//don't go into/off collision blocks-right
if (facing = -1) && (hurtactive = 0)
{
    if (place_meeting(x-(5),y,obj_block)) or (position_empty(x-(15),y+13)) or (place_meeting(x-(5),y,obj_slope1_right)) or (place_meeting(x-(5),y,obj_slope1_left)) or (global.hurt = 1)
    {
        if (change_direction = 0)
        {
        change_direction = 1;
        hspd = 0;
        with(instance_place(x,y,obj_sprites_toad))
        {
        if ((charge = 1) or (go = 1)) && (facing = -1)
        {
        charge = 0;
        go = 0;
        started1 = 0;
        }
        }
        }
    }
}

//turn change_direction off if unnecessary
if (!((place_meeting(x-(5),y,obj_block)) && (position_empty(x-(15),y+13)) && (place_meeting(x-(5),y,obj_slope1_right)) && (place_meeting(x-(5),y,obj_slope1_left))
&& (place_meeting(x+(5),y,obj_block)) && (position_empty(x+(15),y+13)) && (place_meeting(x+(5),y,obj_slope1_right)) && (place_meeting(x+(5),y,obj_slope1_left)) && (global.hurt = 1)))
{
    change_direction = 0;
    with(instance_place(x,y,obj_sprites_toad))
    {
        if (image_index >= image_number-1) && (started2 = 0) && (turning = 0) && (charge = 0)
        {
        go = 1;
        }
    }
}

}

