//everything else
inst2 = instance_place(x,y,obj_enemy_robotwheel_hitbox_up)

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

x = inst2.x;
y = inst2.y;

//getting hurt+killed
var inst = (instance_nearest(x,y,obj_bullet))

enemy_hurt_player_code(1)

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

if (inst != noone) && (!instance_place(x,y,obj_bullet))
{
    enemy_almost_hurt = 1;
}

if (instance_place(id.x,id.y,obj_bullet))
{
    with((instance_place(id.x,id.y,obj_bullet)))
    {
        audio_stop_sound(snd_beam1_noeffect)
		audio_play_sound(snd_beam1_noeffect,1,false,global.sfx_volume)
		hspd = 0;
        vspd = 0;
		sprite_index = spr_bullet_hit_noeffect;
        started1 = 1;	
        enemy_contact = 1;
    }
}


//for getting killed
var xmin = (instance_place(x,y,obj_enemy_robotwheel_hitbox_up)).x;
var xmax = xmin + (sprite_get_width(spr_enemy_robotwheel1)/2);
var ymin = (instance_place(x,y,obj_enemy_robotwheel_hitbox_up)).y;
var ymax = ymin + (sprite_get_height(spr_enemy_robotwheel1)/2);

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
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

