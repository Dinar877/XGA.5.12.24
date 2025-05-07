if (global.spawnitem_wjl = 1) && (global.facingDir = 1)
{
    image_alpha = 100;
    x = obj_player.x+4;
    y = obj_player.y;
    image_speed = 0.6;
}

if (image_index >= 5)
{
image_speed = 0;
image_index = 0;
image_alpha = 0;
global.spawnitem_wjl = 0;
}

