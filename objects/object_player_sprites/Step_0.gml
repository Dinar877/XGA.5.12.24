if (global.hang = 0) && (global.climbing = 0) && (global.jumping = 0)
{    
    if (global.facingDir > 0)
    {
    x = obj_player.x+3;
    y = obj_player.y;
    }
    if (global.facingDir < 0)
    {
    x = obj_player.x-3;
    y = obj_player.y;
    }
    if (global.running = 0) && (global.jumping = 0)
    {
        y = obj_player.y-1;
    }
}
else if (global.jumping = 1)
{
    x = obj_player.x
    y = obj_player.y
}
    
texture_set_interpolation(false);

//script_execute(player_sprites);

