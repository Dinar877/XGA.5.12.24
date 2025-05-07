/// @description Insert description here
// You can write your code in this edito
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy();
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	
	instance_destroy(inst12)	
	instance_destroy(inst22)	
	instance_destroy(inst32)	
	instance_destroy(inst42)	
	instance_destroy(inst52)
	instance_destroy(inst62)	
	instance_destroy(inst72)	
	instance_destroy(inst82)
	
	instance_destroy(inst13)	
	instance_destroy(inst23)	
	instance_destroy(inst33)	
	instance_destroy(inst43)	
	instance_destroy(inst53)
	instance_destroy(inst63)	
	instance_destroy(inst73)	
	instance_destroy(inst83)
	
	exit
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

//if closed
if (sprite_index == spr_corelock_open_fully) && (switch1 = 0)
{
	//deactivate
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	instance_deactivate_object(inst6)	
	instance_deactivate_object(inst7)	
	instance_deactivate_object(inst8)	
	
	instance_deactivate_object(inst12)	
	instance_deactivate_object(inst22)	
	instance_deactivate_object(inst32)	
	instance_deactivate_object(inst42)	
	instance_deactivate_object(inst52)
	instance_deactivate_object(inst62)	
	instance_deactivate_object(inst72)	
	instance_deactivate_object(inst82)	
	
	instance_deactivate_object(inst13)	
	instance_deactivate_object(inst23)	
	instance_deactivate_object(inst33)	
	instance_deactivate_object(inst43)	
	instance_deactivate_object(inst53)
	instance_deactivate_object(inst63)	
	instance_deactivate_object(inst73)	
	instance_deactivate_object(inst83)	
	
	exit
}


//sound effects
//closing
if (sprite_index = spr_corelock_reversing) && (round(image_index) == 28) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}

//opening
if (sprite_index = spr_corelock_opening) && (round(image_index) == 8) && (!audio_is_playing(snd_metalbang))
{
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume)	
}



//closing
if (open == 1) && (sprite_index != spr_corelock_reversing) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_reversing
	
	instance_activate_object(inst1)	
	instance_activate_object(inst2)	
	instance_activate_object(inst3)	
	instance_activate_object(inst4)	
	instance_activate_object(inst5)
	instance_activate_object(inst6)	
	instance_activate_object(inst7)	
	instance_activate_object(inst8)
	
	instance_activate_object(inst12)	
	instance_activate_object(inst22)	
	instance_activate_object(inst32)	
	instance_activate_object(inst42)	
	instance_activate_object(inst52)
	instance_activate_object(inst62)	
	instance_activate_object(inst72)	
	instance_activate_object(inst82)
	
	instance_activate_object(inst13)	
	instance_activate_object(inst23)	
	instance_activate_object(inst33)	
	instance_activate_object(inst43)	
	instance_activate_object(inst53)
	instance_activate_object(inst63)	
	instance_activate_object(inst73)	
	instance_activate_object(inst83)
}
else if (open == 1) && (sprite_index == spr_corelock_reversing) && (image_index >= image_number-1) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_idle
	open = 0
	switch1 = 0
	exit
}


//opening
if (open == 0) && (sprite_index != spr_corelock_opening) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_opening
	
	instance_deactivate_object(inst1)	
	instance_deactivate_object(inst2)	
	instance_deactivate_object(inst3)	
	instance_deactivate_object(inst4)	
	instance_deactivate_object(inst5)
	instance_deactivate_object(inst6)	
	instance_deactivate_object(inst7)	
	instance_deactivate_object(inst8)
	
	instance_deactivate_object(inst12)	
	instance_deactivate_object(inst22)	
	instance_deactivate_object(inst32)	
	instance_deactivate_object(inst42)	
	instance_deactivate_object(inst52)
	instance_deactivate_object(inst62)	
	instance_deactivate_object(inst72)	
	instance_deactivate_object(inst82)	

	instance_deactivate_object(inst13)	
	instance_deactivate_object(inst23)	
	instance_deactivate_object(inst33)	
	instance_deactivate_object(inst43)	
	instance_deactivate_object(inst53)
	instance_deactivate_object(inst63)	
	instance_deactivate_object(inst73)	
	instance_deactivate_object(inst83)	
}
else if (open == 0) && (sprite_index == spr_corelock_opening) && (image_index >= image_number-1) && (switch1 = 1)
{
	image_index = 0
	sprite_index = spr_corelock_open_fully
	open = 1
	switch1 = 0
	
	global.bossblockers[BossblockerID] = 1
	exit
}