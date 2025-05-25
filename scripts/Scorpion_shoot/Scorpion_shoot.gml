// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scorpion_shoot(){

	if (image_index == 13)
	{
		if (sprite_index == spr_scorpion_shoot_right)
		{
			audio_stop_sound(snd_xga_armbust_fire2)
			audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume*0.5)
			emitter_vol = 1;
			
			var inst1 = instance_create_depth(x+5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst2 = instance_create_depth(x+5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst3 = instance_create_depth(x+5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst4 = instance_create_depth(x+5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst5 = instance_create_depth(x+5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			
			with(inst1)
			{
				hspd = 5
				sprite_index = spr_scorpion_bullet_right	
				image_angle = 0
				shootlimit = 1
			}
			with(inst2)
			{
				hspd = 4
				vspd = 1
				sprite_index = spr_scorpion_bullet_right
				image_angle = -30
				shootlimit = 1
			}
			with(inst3)
			{
				hspd = 4
				vspd = -1
				sprite_index = spr_scorpion_bullet_right
				image_angle = 30
				shootlimit = 1
			}
			with(inst4)
			{
				hspd = 3
				vspd = 2
				sprite_index = spr_scorpion_bullet_right
				image_angle = -60
				shootlimit = 1
			}
			with(inst5)
			{
				hspd = 3
				vspd = -2
				sprite_index = spr_scorpion_bullet_right
				image_angle = 60
				shootlimit = 1
			}
		}
		else if (sprite_index == spr_scorpion_shoot_left)
		{
			audio_stop_sound(snd_xga_armbust_fire2)
			audio_play_sound(snd_xga_armbust_fire2,1000,false,global.sfx_volume*0.5)
			emitter_vol = 1;
			
			var inst1 = instance_create_depth(x-5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst2 = instance_create_depth(x-5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst3 = instance_create_depth(x-5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst4 = instance_create_depth(x-5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			var inst5 = instance_create_depth(x-5,y-20,id.depth-1,obj_enemy_scorpion_bullet)
			
			with(inst1)
			{
				hspd = -5
				sprite_index = spr_scorpion_bullet_left	
				image_angle = 0
				shootlimit = 1
			}
			with(inst2)
			{
				hspd = -4
				vspd = 1
				sprite_index = spr_scorpion_bullet_left
				image_angle = 30
				shootlimit = 1
			}
			with(inst3)
			{
				hspd = -4
				vspd = -1
				sprite_index = spr_scorpion_bullet_left
				image_angle = -30
				shootlimit = 1
			}
			with(inst4)
			{
				hspd = -3
				vspd = 2
				sprite_index = spr_scorpion_bullet_left
				image_angle = 60
				shootlimit = 1
			}
			with(inst5)
			{
				hspd = -3
				vspd = -2
				sprite_index = spr_scorpion_bullet_left
				image_angle = -60
				shootlimit = 1
			}
		}
	}
	else if (image_index >= image_number-1)
	{
		audio_stop_sound(snd_xga_armbust_fire2)
		emitter_vol = 0;
		
		if (facing = 1)
		{
			sprite_index = spr_scorpion_stand_right
			State_machine_switch_state(Scorpion_stand);
			exit;	
		}
		else if (facing = -1)
		{
			sprite_index = spr_scorpion_stand_left
			State_machine_switch_state(Scorpion_stand);
			exit;	
		}
	}
	
}