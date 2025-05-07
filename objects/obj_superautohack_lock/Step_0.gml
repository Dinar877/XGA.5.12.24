/// @description Insert description here
// You can write your code in this editor

RedblockerID_check()

if (global.doors_redblocker[redblockerID] = 1) && (sprite_index != spr_superautohack_door_opening)
{
	sprite_index = spr_superautohack_door_opening	
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	
	instance_destroy(inst6)
	
	instance_destroy(inst11)	
	instance_destroy(inst21)	
	instance_destroy(inst31)	
	instance_destroy(inst41)	
	instance_destroy(inst51)
	
	image_speed = 0
	image_index = image_number-1
	
	open = 1
	
	exit;
}

if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (place_meeting(id.x,id.y,obj_shockwave_energycircle)) && (image_speed != 0) && (global.shockwave_state = 1)
{
	sprite_index = spr_superautohack_door_opening
	global.doors_redblocker[redblockerID] = 1;
}


if (sprite_index = spr_superautohack_door_opening) && (open = 0)
{
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	
	instance_destroy(inst6)
	
	instance_destroy(inst11)	
	instance_destroy(inst21)	
	instance_destroy(inst31)	
	instance_destroy(inst41)	
	instance_destroy(inst51)
	
	open = 1
	
	//sfx
	var snd = audio_play_sound(snd_glass_shatter,1000,false,global.sfx_volume)
	audio_sound_set_track_position(snd,1.0)
	var snd1 = audio_play_sound(snd_gate_opening,1000,false,global.sfx_volume)
	
	instance_create_depth(x,y,id.depth-1,obj_superautohack_doorpiece)
	instance_create_depth(x,y,id.depth-1,obj_superautohack_doorpiece)
	instance_create_depth(x,y,id.depth-1,obj_superautohack_doorpiece)
	instance_create_depth(x,y,id.depth-1,obj_superautohack_doorpiece)
}


if (sprite_index = spr_superautohack_door_opening) && (open = 1) && (image_index >= image_number-1)
{
	image_speed = 0
	image_index = image_number-1
}
