if (global.hurt = 1)
{
    hspd = 0;
}

if (collision_circle(x,y,35,obj_player,false,false))
{
    passive = 1;
}

if (passive = 1) && (finishjump = 1)
{
    with(instance_place(x,y,obj_sprites_grounder))
    {
        sprite_index = spr_enemy_grounder_aggressive;
        image_speed = 0.2;
    }
    grav = 0;
    vspd = 3;
}

if (place_meeting(x,y+3,obj_block)) && (unmaxjump = 1)
            {
            jump = 0;
            maxjump = 0;
            unmaxjump = 0;
            finishjump = 1;
            grav = 0;
            y =round(y);
            with(instance_place(x,y,obj_sprites_grounder))
                {
                    image_index = 23;
                    stop1 =0;
                }
            }
else if !(place_meeting(x,y+3,obj_block)) && (unmaxjump = 1)
            {
                with(instance_place(x,y,obj_sprites_grounder))
                {
                    image_speed = 0;
                    stop1 = 1;
                }
                y = round(y) +2;
            }

with(instance_place(x,y,obj_sprites_grounder))
{
    if (image_index >= 11) && (image_index < 14)
    {
        with(instance_place(x,y,obj_hitbox_grounder))
        {
        jump = 1;
        maxjump = 0;
        unmaxjump = 0;
        finishjump = 0;
        y = round(y)- (vspd - grav);
        grav += 0.15;
        with(obj_sprites_grounder)
        {
        image_speed = 0.15;
        }
        }
    }
    if (image_index >= 14) && (image_index < 18)
    {
        with(instance_place(x,y,obj_hitbox_grounder))
        {
        jump = 0;
        maxjump = 1;
        unmaxjump = 0;
        finishjump = 0;
        grav = 0;
        vspd = 0;
        with(instance_place(x,y,obj_sprites_grounder))
        {
        image_speed = 0.2;
        }
        //y -= vspd - grav;
        //garv += 0.5;
        }
    }
    if (image_index >= 18) && (image_index < 22)
    {
        with(instance_place(x,y,obj_hitbox_grounder))
        {
        jump = 0;
        maxjump = 0;
        unmaxjump = 1;
        finishjump = 0;
        y = round(y)+grav;
        grav += 0.15;
        with(instance_place(x,y,obj_sprites_grounder))
        {
        image_speed = 0.2;
        }
        }
    }
    if (image_index = 22)
    {
        if (stop1=1)
        {
            image_speed = 0;
        }
    }
    if (image_index = 23)
    {
    sprite_index = spr_enemy_grounder_aggressive;
    image_speed = 0.2;
    }
    
}



