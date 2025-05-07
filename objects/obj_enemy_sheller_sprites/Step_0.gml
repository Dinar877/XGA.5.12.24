/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

//if no hitbox object, cancel code
if (inst2 < 0) or (!instance_exists(inst2))
{
	exit	
}


x = inst2.x;
y = inst2.y;

placefree1 = collision_rectangle(id.x+inst2.hspd,id.y+inst2.vspd,id.x-inst2.hspd,id.y-inst2.vspd,obj_block, false,true);

if (idleend <= 0)
{
	inst_player = collision_rectangle(id.x-100,id.y,id.x+100,id.y,obj_player, false,true);
}
else if (idleend > 0)
{
	inst_player = collision_rectangle(id.x-200,id.y,id.x+200,id.y,obj_player, false,true);
}

if (inst_player > 0)
{
	idlewalk = 0;
	idlewait = 200;
}


//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))

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


if (inst2 != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

if (instance_place(x,y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(x,y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
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

if (hp > 0)
{
	State_machine_execute()	
}
