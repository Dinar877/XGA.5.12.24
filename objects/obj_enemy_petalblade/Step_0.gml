/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

inst_player = collision_rectangle(id.x-200,id.y-100,id.x+200,id.y+100,obj_player, false,true);

x = inst2.x;
y = inst2.y+idleY;

//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(1)

//charging attacks
if (sprite_index = spr_petalblade_prep) && (started4 = 0)
{
    FadeNow = 0.8;
    started4 = 1;
}
if (FadeNow > 0) && (sprite_index = spr_petalblade_prep) && (started4 = 1)
{
    FadeNow -= 0.05;
}
if (FadeNow <= 0) && (sprite_index = spr_petalblade_prep)
{
    FadeNow = 0;
    started4 = 0;
}

//charging attacks-2
if (sprite_index = spr_petalblade_prep_2) && (started4 = 0)
{
    FadeNow = 0.8;
    started4 = 1;
}
if (FadeNow > 0) && (sprite_index = spr_petalblade_prep_2) && (started4 = 1)
{
    FadeNow -= 0.05;
}
if (FadeNow <= 0) && (sprite_index = spr_petalblade_prep_2)
{
    FadeNow = 0;
    started4 = 0;
}

if (sprite_index = spr_petalblade_spin) or (sprite_index = spr_petalblade_spin_2) or (enemy_hurt > 0)
{
	started4 = 0
	FadeNow = 0
}

//screw attack
if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= hp;
	if (audio_is_playing(snd_beamexplosion))
	{
		audio_stop_sound(snd_beamexplosion)
		audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
	}
	else audio_play_sound(snd_beamexplosion,1000,false,global.sfx_volume)
}

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

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
		sword_spriteindex = 0;
	}
    stay = 1;
	
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
	
	instance_destroy();
}

if (hp > 0)
{
State_machine_execute();
}
