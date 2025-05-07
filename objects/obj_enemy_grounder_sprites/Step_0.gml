/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(inst2))
{
	exit;	
}

if (instance_exists(inst2) > 0)
{
	x = inst2.x;
	y = inst2.y;
}
else
{
	instance_destroy()
	exit
}

var inst = (instance_nearest(x,y,obj_bullet));

enemy_hurt_player_code(2)

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

if (inst != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

//for getting hit

if (instance_place(x,y,obj_bullet)) && (enemy_hurt = 0)
{
    if (enemy_hurt = 0)
	{
	enemy_hurt = 0.9;
	}
    stay = 1;
    enemy_almost_hurt = 0;
    bullet_hurtenemycode(self)
}


//for getting killed
var xmin = inst2.x;
var xmax = xmin + (sprite_get_width(spr_enemy_grounder_hitbox)/2);
var ymin = inst2.y;
var ymax = ymin + (sprite_get_height(spr_enemy_grounder_hitbox)/2);

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
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


//prepjump
if (collision_circle(x,y,50,obj_player,false,true)) && (sprite_index == spr_enemy_grounder_Idle) && (jump_now == 0) && (global.invisibility <= 0)
{
	sprite_index = spr_enemy_grounder_prepjump;
}


//popping out of ground animation
if (instance_exists(inst2))
{	
	if (sprite_index == spr_enemy_grounder_prepjump) && (image_index < image_number-1) && (jump_now == 0) && (rock_total < 11) && (inst2.placey > 0)
	&& (inst2.popout_now = 0)
	{
		var xmin = inst2.x;
		var xmax = xmin + (sprite_get_width(spr_enemy_grounder_hitbox)/3);
		var ymin = inst2.y;
		var ymax = ymin + (sprite_get_height(spr_enemy_grounder_hitbox)/5);

		if (rock_timer >= 1)
		{
			instance_create_layer(random_range(xmin, xmax), random_range(ymin, ymax),layer_get_id("Inst_level_0"), obj_enemy_grounder_rocks);
			rock_timer = 0;
			rock_total += 1;
		}
		else if (rock_timer < 1)
		{
			rock_timer += 0.8;
		}
	}
}

//go to normal jump
if (sprite_index == spr_enemy_grounder_prepjump) && (image_index >= image_number-1) && (jump_now == 0)
{
	sprite_index = spr_enemy_grounder_jump;
	jump_now = 1;
	with(inst2)
	{
		jump_now = 1;
		
		audio_stop_sound(snd_player_spinjump_shorter)
		audio_play_sound(snd_player_spinjump_shorter,1000,false,global.sfx_volume)
	}
}