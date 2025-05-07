if (global.health1 >= 100) && (global.health_limit > 100)
{
    sprite_index = spr_healthNew_fulltank1
}
if (global.health1 < 100) && (global.health_limit > 100)
{
    sprite_index = spr_healthNew_emptytank1;
}

