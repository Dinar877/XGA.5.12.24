/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

if FadeNow > 0 
{ 
	FadeNow -= 0.005; 
	with(obj_elevator_top1_pressa)
	{
		image_alpha -= 0.002; 
	}
}
else if FadeNow <= 0
{
	FadeNow = 0.5;
	with(obj_elevator_top1_pressa)
	{
		image_alpha = 1; 
	}
}

if (global.pause_elevator > 0)
{
	FadeNow = 0
}

if (noplacemeeting = 1) && (!instance_exists(obj_elevator_exit)) && (!jump_pressed)
{
	noplacemeeting = 0
	instance_create_depth(x,bbox_top-6,id.depth-1,obj_elevator_top1_pressa)
}

if (place_meeting(x,y,obj_player)) && (jump_pressed) && (on <= 0) && (off <= 0) && (noplacemeeting = 0)
{
	if (instance_exists(obj_player_sword_sparks))
		{
			instance_destroy(obj_player_sword_sparks)	
		}
	audio_stop_sound(snd_electricity)
	
	on = 1
	noplacemeeting = 1
	global.pause_player = 1;
	global.charging = 0
	global.charge_ready = 0
	global.pause_elevator = 1;
	instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_scrn"),obj_elevator_screeneffect)
	instance_create_layer(obj_camera.x-48,obj_camera.y-8,layer_get_id("Inst_healthui2"),obj_elevator_exit)
	
	//spawns elevator object based on variable
	instance_create_layer(obj_camera.x-48,obj_camera.y-26,layer_get_id("Inst_healthui2"),inst_elevator)
	instance_create_layer(obj_camera.x-63,obj_camera.y-26,layer_get_id("Inst_healthui2"),obj_elevator_arrow)
	
	with(obj_player)
	{
		if (sprite_index = spr_player_jump)
		    {
		        with(obj_camera)
				{
					yspin = -7;
				}
				y -= 7;
		        sprite_index = spr_player;
		    } 	
	}
	
	obj_player.x = 475;
	obj_player.y = 277;
	object_player2_0_sprites.x = 475;
	object_player2_0_sprites.y = 278;
	
	with(object_player2_0_sprites)
	{
		if (global.facingDir > 0)
		{
			image_index = 0
			image_speed = 1
			sprite_index = spr_typing_begin_right
		}
		else if (global.facingDir < 0)
		{
			image_index = 0
			image_speed = 1
			sprite_index = spr_typing_begin_left
		}
	}
	
	if (instance_exists(obj_nuclearblast_scrneffect))
	{
		instance_destroy(obj_nuclearblast_scrneffect)	
	}
	
}

if (on > 0)
{
	FadeNow = 0;
	instance_destroy(obj_elevator_top1_pressa)
}