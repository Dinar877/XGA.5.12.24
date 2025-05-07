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

if (inst5 > 0) && (global.invisibility <= 0)
{
	go = 1;	
}
else if (inst5 <= 0)
{
	go = 0;	
}

if (instance_exists(obj_player)) && (global.invisibility <= 0)
{
	if (id.x > obj_player.x) && (turning = 0) && (facing = 1)
	{
		sprite_index = spr_securitybot_spike_turn_left;
		turning = 1
		facing = -1
	}
	else if (id.x < obj_player.x) && (turning = 0) && (facing = -1)
	{
		sprite_index = spr_securitybot_spike_turn_right;
		turning = 1
		facing = 1
	}
}

if (turning = 1) && (sprite_index = spr_securitybot_spike_turn_left) && (image_index >= image_number-1)
{
	turning = 0
	sprite_index = spr_securitybot_spike_idle_left
}
else if (turning = 1) && (sprite_index = spr_securitybot_spike_turn_right) && (image_index >= image_number-1)
{
	turning = 0
	sprite_index = spr_securitybot_spike_idle;
}

if (go = 1) && (sprite_index = spr_securitybot_spike_idle) && (turning = 0)
{
	sprite_index = spr_securitybot_spike_attack
}
else if (go = 1) && (sprite_index = spr_securitybot_spike_idle_left) && (turning = 0)
{
	sprite_index = spr_securitybot_spike_attack_left
}
else  if (sprite_index = spr_securitybot_spike_attack) && (image_index > image_number-1)
{
	sprite_index = spr_securitybot_spike_idle
}
else  if (sprite_index = spr_securitybot_spike_attack_left) && (image_index > image_number-1)
{
	sprite_index = spr_securitybot_spike_idle_left
}

var inst4 = (instance_nearest(x,y,obj_bullet))

//screw attack
if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1)) && (hp > 0)
{
    hp -= hp;
	if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
}

enemy_hurt_player_code(1)

if (place_meeting(x,y,obj_jumpsparkattack))
{
    enemy_hurt = 1;
	hp -= 20;
}


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

if (instance_place(id.x,id.y,obj_bullet))
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    bullet_hurtenemycode(self)
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
		sword_spriteindex = 0;
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

		with(inst2)
		{
			instance_destroy();
		}
		instance_destroy();
}