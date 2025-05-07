if (direction1 > 0)
{
    image_angle += 10;
    x = (x+(2-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(1-adder2));
    adder2 += 0.1;
}
if (direction1 <= 0)
{
    image_angle -= 10;
    x = (x-(2-adder1));
    if (adder1 < 1)
    {
    adder1 += 0.1;
    }
    y = (y -(1-adder2));
    adder2 += 0.1;
}

if (place_meeting(x,y,obj_block)) or (place_meeting(x,y,obj_slope1_left)) or (place_meeting(x,y,obj_slope1_right))
{
    if (sprite_index = spr_explosion_chunk1)
    {
        sprite_index = spr_explosion_chunk2;
        hit = 1;
        adder2 = 0;
    }
    if (sprite_index = spr_explosion_chunk11)
    {
        sprite_index = spr_explosion_chunk21;
        hit = 1;
        adder2 = 0;
    }
    if (sprite_index = spr_explosion_chunk12)
    {
        sprite_index = spr_explosion_chunk22;
        hit = 1;
        adder2 = 0;
    }
}

if (hit = 1)
{
    if (direction1 > 0)
    {
    image_angle -= 30;
    y = (y -(1-adder2));
    adder2 += 0.2;
    }
    if (direction1 <= 0)
    {
    image_angle += 30;
    y = (y -(1-adder2));
    adder2 += 0.2;
    }
}

