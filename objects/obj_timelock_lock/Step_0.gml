/// @description Insert description here
// You can write your code in this edito

if (open == false)
&& (sprite_index == spr_timelock_shutting)
&& (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,false,true))
{
	image_speed = 0;
}
else image_speed = 1;

if (sprite_index = spr_timelock_open) && (instance_exists(inst1_invis))
{
	instance_deactivate_object(inst1_invis)	
	instance_deactivate_object(inst2_invis)	
	instance_deactivate_object(inst3_invis)	
	instance_deactivate_object(inst4_invis)	
	instance_deactivate_object(inst5_invis)	
	instance_deactivate_object(inst6_invis)
	instance_deactivate_object(inst7_invis)
	instance_deactivate_object(inst8_invis)
}

if (sprite_index = spr_timelock_closed) && (!instance_exists(inst1_invis))
{
	instance_activate_object(inst1_invis)	
	instance_activate_object(inst2_invis)	
	instance_activate_object(inst3_invis)	
	instance_activate_object(inst4_invis)	
	instance_activate_object(inst5_invis)
	instance_activate_object(inst6_invis)
	instance_activate_object(inst7_invis)
	instance_activate_object(inst8_invis)
	
	audio_play_sound(snd_metalbang,1000,false,global.sfx_volume);
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}

if (sprite_index = spr_timelock_shutting) && (image_index >= image_number-1)
{
	sprite_index = spr_timelock_closed;
	open = false;
}

if (sprite_index = spr_timelock_opening) && (image_index >= image_number-1)
{
	sprite_index = spr_timelock_open;
	open = true;
}