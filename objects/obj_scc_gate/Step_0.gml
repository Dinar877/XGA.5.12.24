/// @description Insert description here
// You can write your code in this editon
if (global.room_transition) or (global.room_transition1) or (global.room_transition_more) or (global.room_transition_3)
or (global.room_transition_nodoors) or (global.room_transition_nodoors_2) or (global.room_transition_nodoors_more) or (global.room_transition_nodoors_3)
{
	exit	
}


radiusDetectPlayer = collision_circle(x,y,100,obj_player,false,true)

if (radiusDetectPlayer) && (global.cutsceneID[Cutscenes.scc_active] == true)
&& (changing == false)
{
	sprite_index = spr_door_scc_opening;
	audio_play_sound(snd_gate_opening,1000,false,global.sfx_volume)
	changing = true
}



//bullets
if (instance_place(id.x,id.y,obj_bullet))
{
    bullet_hurtenemycode_noeffect()
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}



//opening-finish
if (sprite_index == spr_door_scc_opening) && (image_index >= image_number-1)
&& (changing == true)
{
	instance_destroy(inst1)	
	instance_destroy(inst2)	
	instance_destroy(inst3)	
	instance_destroy(inst4)	
	instance_destroy(inst5)
	instance_destroy(inst6)	
	instance_destroy(inst7)	
	instance_destroy(inst8)
	
	image_speed = 0
	image_index = image_number-1
}