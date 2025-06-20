/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}

if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	exit;
}
else inst = instance_place(x,y,obj_boss_kingstalker_hitbox_setpiece);

inst = instance_place(x,y,obj_boss_kingstalker_hitbox_setpiece)

if (inst > 0)
{
	x = inst.x;
	y = inst.y+spriteheight;
}



//getting hurt by shit
var inst4 = (instance_nearest(x,y,obj_bullet))



if (place_meeting(x,y,obj_player)) && ((object_player2_0_sprites.sprite_index = spr_screwjump_left1) or (object_player2_0_sprites.sprite_index = spr_screwjump_right1) or (instance_exists(obj_player_dashspark))) && (hp > 0)
{
    hp -= 100;
	if (enemy_hurt = 0)
	{
		enemy_hurt = 0.9;
	}
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

if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (hp <= 0) && (deathanim <= 0)
{
	with(obj_camera)
	{
		y = obj_mapchecker2.y+90	
	}
	deathanim = 1;
	image_speed = 0;
	with(obj_boss_kingstalker_hitbox_setpiece)
	{
		deathanim = 1;	
		image_speed = 0;
		State_machine_switch_state(Freeze)
	} 
	with(obj_player)
	{
		hspd_enemy = 0;
	}
	if (audio_is_playing(ost_mmz_boss) > 0)
	{
		audio_sound_gain(ost_mmz_boss,0,1000)
	}
}
