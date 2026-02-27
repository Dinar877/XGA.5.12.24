// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_if_ledge(){
	////LEDGE GRABBING
	#region
	
	//Checking ledges - going into ledge grab
	if (state != Ledge_grab) && (state != Climb_up_ledge) && (state != Ledge_jumpprep) && (state != Shoot_hang)
	{
		var isSpinHitbox = (global.jumpingdm * 7)
		//the +1 is for accounting for the half pixels to round them down
		var blockvar1 = instance_position(x+((input_horizontal)*6),y-(sprite_height/2)+1,obj_block)
		var blockvar2 = 0;
		var blockvar3 = instance_position(x+((input_horizontal)*6),y-(sprite_height/2)+1,obj_block)
		var blockvar4 = 0;


		//Check if next to the right sort of block
		if (input_horizontal > 0)
		{
		    if (blockvar1)
			{
				with (blockvar1)
			    {
			        if (am_ledge = 1)
			        {
			            blockvar2 = 1;
			        }
			        else if (am_ledge = 0)
			        {
			            blockvar2 = 0;
			        }
			    }
			}
		}
		else if (input_horizontal < 0)
		{
		    if (blockvar3)
			{
				with (blockvar3)
			    {
			        if (am_ledge = 1)
			        {
			            blockvar4 = 1;
			        }
			        else if (am_ledge = 0)
			        {
			            blockvar4 = 0;
			        }
			    }
			}
		}

		//seeting up other variables
		var fall = vspd > 0;
		//Detecting whether a certain point next to the player is touching a block
		var right_height = position_meeting(x+((input_horizontal)*6), y - floor(sprite_height/2)+1, obj_block);
		var not_a_block =  position_meeting(x+((input_horizontal)*6), y - floor(sprite_height/2)-6, obj_block);
		var highenough = position_meeting(x, y+27, obj_block);
		var noblockoverhead = (!position_meeting(x, y-32, obj_block)) && (!place_meeting(x,y-16,obj_block));
	


		//walljumping!!!
		if (place_meeting(x+(global.facingDir),y,obj_block)) && (global.wallscaler)
		{   
		    walljump_timer += 0.05;
			if ((jump_pressed) or (keyboard_check_pressed(ord("W"))))
				{
					State_machine_switch_state(Wall_jump);
				    hspd = 0;
					hspd_reducer = 0
				    vspd = 0;
				    grav = 0;
				    jump_stopper1 = 0; 
					double_jump = 0;
					walljump_timer = 0;
				    global.walljump = 1;
					global.dash2_spark = 0
					global.dash2_jump = 0
					global.lockdown_facingDir = 0;
					global.hydrodash_use = 0;
					exit
				}
		}
		else if ((!blockvar2) and (!blockvar4)) && (place_free(x+(global.facingDir),y))
		{   
		    walljump_timer = 0;
		}

		if (global.walljump = 0) && (vspd >= 0) && (ledge_ready = 0)
		&& (noblockoverhead) && (right_height=1) && (not_a_block=0) && (highenough=0) && ((blockvar2) or (blockvar4))
		&& (global.hurt2 = 0)
		{
			//sets sprite index of player hitbox to normal
			#region
		
			if (hang_switch = 0)
			{
				if (global.jumpingdm > 0) or (sprite_index = spr_player_jump)
				{
					sprite_index = spr_player
				
					x = floor(x)
					y = floor(y)
					y += 7	
				
					with(obj_camera)
					{
						yspin = 7	
					}
					hang_switch = 1
					global.jumpingdm = 0
				}
				else
				{
					sprite_index = spr_player
				
					x = floor(x)
					y = floor(y)
				
					hang_switch = 1
				}

				//place player hanging at right height
				var inst1 = (instance_position(x+6,y-(sprite_height/2),obj_block))
				{
					if (inst1) && (global.jumpingdm = 0)
					{
					    y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
					    global.hang = 1;
						hang_switch = 1
					}
				}
				var inst2 = (instance_position(x-6,y-(sprite_height/2),obj_block))
				{
					if (inst2) && (global.jumpingdm = 0)
					{
					    y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
					    global.hang = 1;
						hang_switch = 1
					}
				}

				//place player hanging at right height
				var inst1 = (instance_position(x+6,y-(sprite_height/2),obj_block))
				{
					if (inst1) && (global.jumpingdm = 1)
					{
					    with(obj_player)
					    {
						    y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
						    global.jumpingdm = 0;
						    global.hang = 1;
							hang_switch = 1
					    }
					}
				}
				var inst2 = (instance_position(x-6,y-(sprite_height/2),obj_block))
				{
					if (inst2) && (global.jumpingdm = 1)
					{
					    with(obj_player)
					    {
						    y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
						    global.jumpingdm = 0;
						    global.hang = 1;
							hang_switch = 1
					    }
					}
				}
			}
			#endregion
	
	
	
			while (vspd >= 0) && (ledge_ready = 0)
			&& (noblockoverhead) && (right_height=1) && (not_a_block=0) && (highenough=0) && ((blockvar2) or (blockvar4))
			&& (global.hurt2 = 0) && (global.jumpingdm = 0)
			{
			        //place player hanging at right height-normal jump
			        inst1 = (instance_position(x+6,y-(sprite_height/2)+1,obj_block))
			        {
				        if (inst1) && (global.jumpingdm = 0)
				        {
				            with(obj_player)
				            {
					            y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
					            ledge_ready = 1;
					            hspd = 0;
					            vspd = 0;
					            grav = 0;
					            jump_stopper1 = 0;
				            }
				        }
			        }
			        inst2 = (instance_position(x-6,y-(sprite_height/2)+1,obj_block))
			        {
				       if (inst2) && (global.jumpingdm = 0)
				        {
				            with(obj_player)
				            {
					            y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
					            ledge_ready = 1;
					            hspd = 0;
					            vspd = 0;
					            grav = 0;
					            jump_stopper1 = 0;
				            }
				        }
			        }
			}

			while (vspd >= 0) && (ledge_ready = 0)
			&& (noblockoverhead) && (right_height=1) && (not_a_block=0) && (highenough=0)
			&& (global.jumpingdm = 1)
			&& ((blockvar2) or (blockvar4))
			&& (global.hurt2 = 0)
			{
    
			            //place player hanging at right height-dm jump
			        inst1 = (instance_position(x+6,y-(sprite_height/2)+1,obj_block))
			        {
				        if (inst1) && (global.jumpingdm = 1)
				        {
				            with(obj_player)
				            {
					            y = inst1.bbox_top - ((bbox_top-bbox_bottom)/2);
					            ledge_ready = 1;
					            hspd = 0;
					            vspd = 0;
					            grav = 0;
					            jump_stopper1 = 0;
				            }
				        }
			        }
			        inst2 = (instance_position(x-6,y-(sprite_height/2)+1,obj_block))
			        {
				        if (inst2) && (global.jumpingdm = 1)
				        {
				            with(obj_player)
				            {
					            y = inst2.bbox_top - ((bbox_top-bbox_bottom)/2);
					            ledge_ready = 1;
					            hspd = 0;
					            vspd = 0;
					            grav = 0;
					            jump_stopper1 = 0;
            
				            }
				        }
			        }
    
			}
		}
	
	
		//grab on ledge
		if (ledge_ready = 1) && (vspd >= 0) && (global.hurt2 = 0)// && (!position_meeting(x,y+20,obj_block)) && (!place_meeting(x,y+16,obj_block))
			{
			    ledge_ready = 1;
				jump_stopper1 = 0
				dash_jump = 0;
				double_jump = 0;
				hang_switch = 0
				hangOriginalX = x
				hangOriginalY = y
				hangOriginalFacingDir = global.facingDir
				
				
				global.dash2_spark = 0
				global.dash2_jump = 0
				global.hydrodash_use = 0;
			
				audio_stop_sound(snd_player_spinjump);
				audio_stop_sound(snd_player_spinjump_shorter);
				audio_stop_sound(snd_player_spacejump);
				audio_stop_sound(snd_player_screwattack);
				audio_stop_sound(snd_swordswoosh);
				audio_play_sound(snd_player_hang,1,false,global.sfx_volume)
			
			    State_machine_switch_state(Ledge_grab);
			
				//if sword spinning
				if (instance_exists(obj_player_sword_hitbox))
				{
					instance_destroy(obj_player_sword_hitbox)
					audio_stop_sound(snd_saber1)
				}
			}
	
	
	
		#endregion
	
	}
	else if ((state = Ledge_grab) or (state = Climb_up_ledge) or (state = Ledge_jumpprep))
	&& (((position_meeting(x+(16*hangOriginalFacingDir),y-floor(sprite_height/2)-1,obj_block)) && (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (global.hangAiming == 0) && (global.jumpprep == 0))
	or ((!position_meeting(x+(floor(sprite_width/2)*hangOriginalFacingDir)+hangOriginalFacingDir,y-floor(sprite_height/2)+1,obj_block)) && (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (global.hangAiming == 0) && (global.jumpprep == 0))
	or ((!position_meeting(bbox_right+1,bbox_top,obj_block)) && ((global.hangAiming == 1) or (global.jumpprep == 1)) && (hangOriginalFacingDir == 1))
	or ((!position_meeting(bbox_left-1,bbox_top,obj_block)) && ((global.hangAiming == 1) or (global.jumpprep == 1)) && (hangOriginalFacingDir == -1)))
	{
		var testCol1 = ((position_meeting(x+(16*hangOriginalFacingDir),y-floor(sprite_height/2)-1,obj_block)) && (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (global.hangAiming == 0) && (global.jumpprep == 0))
		var testCol2 = ((!position_meeting(x+(floor(sprite_width/2)*hangOriginalFacingDir)+hangOriginalFacingDir,y-floor(sprite_height/2)+1,obj_block)) && (global.image_speed_lockdown == 0) && (global.turningLedge == 0) && (global.hangAiming == 0) && (global.jumpprep == 0))
		var testCol3 = ((!position_meeting(bbox_right+1,bbox_top,obj_block)) && ((global.hangAiming == 1) or (global.jumpprep == 1)) && (hangOriginalFacingDir == 1))
		var testCol4 = ((!position_meeting(bbox_left-1,bbox_top,obj_block)) && ((global.hangAiming == 1) or (global.jumpprep == 1)) && (hangOriginalFacingDir == -1))
		var testSprite = (object_player2_0_sprites.sprite_index)
		
		global.image_speed_lockdown = 0;
		global.animation_start1 = 0;
		global.turning = 0
		global.turningLedge = 0;
		global.hang = 0;
		global.hangAiming = 0;
		global.climbing = 0;
		hangtimer = 1;
		hang_switch = 0;
		hangOriginalX = 0
		hangOriginalY = 0
		hangOriginalFacingDir = 0
		State_machine_switch_state(Falling);
		
		if (!place_meeting(x,y+6,obj_block))
		{
			y += 6;
		}
		
		var sndIDDrop = audio_play_sound(snd_player_hang_letgo,1000,false,global.sfx_volume)
		audio_stop_sound(snd_robot_move_2)
		
		//Teleport_Camera(x,y)
		exit;
	}
	

	exit;
}