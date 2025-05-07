//everything else
inst2 = instance_place(x,y,obj_enemy_mushroom_hitbox)

x = inst2.x;
y = inst2.y;

//getting hurt+killed
var inst = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(1)

if (place_meeting(x,y,obj_player)) && (((global.jumpingdm = 1) && (global.screwjump = 1)) or (global.dashuse = 1))
{
    hp -= 100;
}

if (inst != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

//for getting hit

if (instance_place(x,y,obj_bullet))
{
    enemy_hurt = 1;
    if (global.upgrade_charge = 1)
    {
    hp -= 2;
    }
    else if (global.charge_shot = 1)
    {
    hp -= 10;
    }
    else if (global.upgrade_charge = 0)
    {
    hp -= 1;
    }
    stay = 1;
    enemy_almost_hurt = 0;
    with((instance_place(x,y,obj_bullet)))
    {
        enemy_contact = 1;
        shootlimit = 0;
        hspd = 0;
        vspd = 0;
        
        var xmin1 = x;
        var xmax1 = xmin1 + (sprite_get_width(spr_enemy_mushroom_hitbox)/2);
        var ymin1 = y;
        var ymax1 = ymin1 + (sprite_get_height(spr_enemy_mushroom_hitbox)/2);
        if (image_index = 0)
        {
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit);
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
        instance_create(random_range(xmin1, xmax1), random_range(ymin1, ymax1), obj_explosion_normalhit_chunk);
        }
        
        if (global.explosiveammo = 0) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
        {
        sprite_index = spr_bullet_hit;
        started1 = 1;
        }
        if (global.explosiveammo = 1) && (started1 = 0) && (global.upgrade_charge = 0) && (global.charge_shot = 0)
        {
        sprite_index = spr_explosion1;
        started1 = 1;
        }
        if (global.upgrade_charge = 1) && (global.charge_shot = 0) && (started1 = 0)
        {
        sprite_index = spr_charge1_bullet_hit;
        started1 = 1;
        }
        if (global.upgrade_charge = 1) && (global.charge_shot = 1) && (started1 = 0)
        {
        sprite_index = spr_charge2_bullet_hit;
        started1 = 1;
        }
        image_speed = 0.5;
    }
}


//for getting killed
var xmin = (instance_place(x,y,obj_enemy_mushroom_hitbox)).x;
var xmax = xmin + (sprite_get_width(spr_enemy_mushroom)/2);
var ymin = (instance_place(x,y,obj_enemy_mushroom_hitbox)).y;
var ymax = ymin + (sprite_get_height(spr_enemy_mushroom)/2);

if (hp <= 0)
{
instance_create(random_range(xmin, xmax), random_range(ymin, ymax), obj_explosion_random);
instance_create(random_range(xmin, xmax), random_range(ymin, ymax), obj_explosion_random);
instance_create(random_range(xmin, xmax), random_range(ymin, ymax), obj_explosion_random);
instance_destroy();
}

