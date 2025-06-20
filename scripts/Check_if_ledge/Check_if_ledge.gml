// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Check_if_ledge(){
	////LEDGE GRABBING
	#region
	
	//Checking ledges
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
	var noblockoverhead = (!position_meeting(x, y-32, obj_block));
	


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
	if (ledge_ready = 1) && (vspd >= 0) && (global.hurt2 = 0) && (!position_meeting(x,y+20,obj_block))
		{
		    ledge_ready = 1;
			jump_stopper1 = 0
			dash_jump = 0;
			double_jump = 0;
			
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
	

	exit;
}