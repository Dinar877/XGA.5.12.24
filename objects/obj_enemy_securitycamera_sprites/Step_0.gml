/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//getting hurt by shit
var inst5 = collision_circle(x,y,100,obj_player,false,true)

if (inst5 > 0)
{
	go = 1;	
}
else if (inst5 <= 0)
{
	go = 0;	
}

if (instance_exists(obj_player))
{

if (id.x > obj_player.x) && (turning = 0) && (facing = 1)
{
	sprite_index = spr_security_camera_right2left;
	turning = 1
	facing = -1
}
else if (id.x < obj_player.x) && (turning = 0) && (facing = -1)
{
	sprite_index = spr_security_camera_left2right;
	turning = 1
	facing = 1
}

if (turning = 1) && (sprite_index = spr_security_camera_left2right) && (image_index >= image_number-1)
{
	turning = 0
	sprite_index = spr_security_camera_right
}
else if (turning = 1) && (sprite_index = spr_security_camera_right2left) && (image_index >= image_number-1)
{
	turning = 0
	sprite_index = spr_security_camera_left;
}

var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && (global.screwjump) && (global.jumpingdm)
{
    hp -= 100;
}

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1)
&& (global.hurt = 0) && (global.hurt2 = 0) && (hp > 0)
{
    global.hurt = 1;
	global.healthKiller = 1;
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}


//bullet
if (instance_place(x,y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}


xmin = x-2
xmax = x+2
ymin = y-2
ymax = y+2

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
	
    sword_hurtenemycode()
}


//dying
if (hp <= 0)
{
	if (sword_deadswitch = 0)
	{
		bullet_hurtenemycode_item()
	}
	else sword_hurtenemycode_item()
	
	instance_create(random_range(x+2, x-2), random_range(y+2, y-2), obj_explosion_random);
	instance_create(random_range(x+2, x-2), random_range(y+2, y-2), obj_explosion_random);
	instance_create(random_range(x+2, x-2), random_range(y+2, y-2), obj_explosion_random);
	with(inst2)
	{
		instance_destroy();
	}
	instance_destroy();
}

}