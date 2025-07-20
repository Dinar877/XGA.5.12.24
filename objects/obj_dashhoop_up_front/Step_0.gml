   /// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
or (!instance_exists(obj_player))
or (!instance_exists(inst))
{
	exit;	
}

//correct angle
if (ringDirection == 0)
{
	image_angle = 0;	
	inst.image_angle = 0;	
}
else if (ringDirection == 1)
{
	image_angle = 180;	
	inst.image_angle = 180;	
}
else if (ringDirection == 2)
{
	image_angle = 270;	
	inst.image_angle = 270;	
}
else if (ringDirection == 3)
{
	image_angle = 90;	
	inst.image_angle = 90;	
}
else if (ringDirection == 4)
{
	image_angle = 45;	
	inst.image_angle = 45;	
}
else if (ringDirection == 5)
{
	image_angle = 315;	
	inst.image_angle = 315;	
}
else if (ringDirection == 6)
{
	image_angle = 135;	
	inst.image_angle = 135;	
}
else if (ringDirection == 7)
{
	image_angle = 225;	
	inst.image_angle = 225;	
}




if (actTimer > 0)
{
	sprite_index = spr_dashhoop_bottom_active;	
	inst.sprite_index = spr_dashhoop_top_active;
	
	actTimer -= ((1/60)*8);
}
else if (actTimer <= 0)
{
	sprite_index = spr_dashhoop_bottom_normal;	
	inst.sprite_index = spr_dashhoop_top_normal;
	
	actTimer = 0;
	activated = 0;
}

//if player collision
if (place_meeting(x,y,obj_player)) 
{
	activated = true;
	actTimer = 1;
	
	
	with(obj_player)
	{
		global.grounded = 0;
		global.jumpingdm = 1;
		global.dash2_jump = 1
		global.lockdown_facingDir = 1;
		global.shoot = 0
	
		if (global.suit_shock = 1)
		{
			global.dash2_spark = 1
		}
	
		hspd_original = 0
		input_horizontal = 0;
		timer = 1;
		
		

		audio_stop_sound(snd_dash);
		var sny = audio_play_sound(snd_dash,1,false,global.sfx_volume);

		var instairdash = instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_airdasheffect);


		
		//ring direction speed
		if (other.ringDirection == 0)
		{
			hspd =  0;
			vspd = -other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_up;
			}
		}
		else if (other.ringDirection == 1)
		{
			hspd = 0;
			vspd = other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_down;
			}
		}
		else if (other.ringDirection == 2)
		{
			hspd = -other.speedValue;
			vspd =  0;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_left;
			}
			
			global.facingDir = -1;
		}
		else if (other.ringDirection == 3)
		{
			hspd = other.speedValue;
			vspd = 0;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_right;
			}
			
			global.facingDir = 1;
		}
		//right
		else if (other.ringDirection == 5)
		{
			hspd = other.speedValue;
			vspd = -other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_rightup;
				depth = object_player2_0_sprites.depth-1
			}
			
			global.facingDir = 1;
		}
		else if (other.ringDirection == 7)
		{
			hspd = other.speedValue;
			vspd = other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_rightdown;
				depth = object_player2_0_sprites.depth-1
			}
			
			global.facingDir = 1;
		}
		//left
		else if (other.ringDirection == 4)
		{
			hspd = -other.speedValue;
			vspd = -other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_leftup;
				depth = object_player2_0_sprites.depth-1
			}
			
			global.facingDir = -1;
		}
		else if (other.ringDirection == 6)
		{
			hspd = -other.speedValue;
			vspd =  other.speedValue;
			with(obj_airdasheffect)
			{
				sprite_index = spr_airdash_leftdown;
				depth = object_player2_0_sprites.depth-1
			}
			
			global.facingDir = -1;
		}

		

		speed_x = hspd;

		if (enemy_slowdownswitch > 0)
		{
			hspd = input_horizontal*2
		}

		jump = 1;



		with(object_player2_0_sprites)
		{
			//jumping-spin
		    if  (global.facingDir = -1) && (global.jumpingdm = 1) && (global.screwjump = 0) && (global.spacejump = 0)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_spinjump_left;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y+4;
		        }
		    }
		    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.screwjump = 0) && (global.spacejump = 0)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_spinjump_right;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y+4;
		        }
		    }
		    //jumping-screwattack
		    if (global.facingDir = -1) && (global.jumpingdm = 1) && (global.screwjump = 1)// && (global.spacejump = 1)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_screwjump_left1;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y-2;
		        }
		    }
		    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.screwjump = 1)// && (global.spacejump = 1)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_screwjump_right1;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y-2;
		        }
		    }
		    //jumping-spacejump
		    if (global.facingDir = -1) && (global.jumpingdm = 1) && (global.spacejump = 1) && (global.screwjump = 0)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_spacejump_left;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y-2;
		        }
		    }
		    else if (global.facingDir = 1) && (global.jumpingdm = 1) && (global.spacejump = 1) && (global.screwjump = 0)
		    {
		        with (object_player2_0_sprites)
		        {
			        sprite_index = spr_spacejump_right;
			        image_speed = 1;
			        x = obj_player.x;
			        y = obj_player.y-2;
		        }
		    }	
		}

		State_machine_switch_state(Falling_dashhoop);
	}
}