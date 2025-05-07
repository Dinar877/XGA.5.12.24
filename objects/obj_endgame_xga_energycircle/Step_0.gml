/// @description Insert description here
// You can write your code in this editor
image_alpha -= (1/60)/10;

if (image_xscale < 10)
{
	image_xscale += 0.5
	image_yscale += 0.5
}

if (image_alpha <= 0) && (switch1 = 1)
{
	instance_destroy()	
	exit;
}

//Getting hurt by player's bullets
var inst4 = (instance_nearest(x,y,obj_bullet))

if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((global.screwjump = 0) or ((global.jumpingdm = 0) && (global.screwjump = 1)))
&& (global.hurt = 0) && (global.hurt2 = 0) && (switch1 = 0)
{
	switch1 = 1
}

if (instance_exists(obj_player))
{
	if (switch1 = 1) && ((obj_player.state = Idle) or (obj_player.state = Idle_landing) or (obj_player.state = Move) or (obj_player.state = Crouching))
	&& (switch2 = 0)
	{
		obj_player.state = Freeze
		with(obj_player)
		{
			hspd = 0
			vspd = 0
			
			if (sprite_index = spr_player_jump)
		    {
		        y -= 7;
		        while(place_meeting(x,y,obj_block))
		        {
		            if (global.facingDir = -1)
		            {
		                y += 1;
		            }
		            if (global.facingDir = 1)
		            {
		                y += 1;
		            }
		        }
		        sprite_index = spr_player;
		    }
		
			if (sprite_index = spr_player_crouch)
		    {
		        sprite_index = spr_player;
			
				global.crouching = 0;
				y -= 4;
			
		        while(place_meeting(x,y,obj_block))
		        {
		            if (global.facingDir = -1)
		            {
		                y += 1;
		            }
		            if (global.facingDir = 1)
		            {
		                y += 1;
		            }
		        }
		    }
		}	
		
		
		
	
		if (instance_exists(obj_player_sword_sparks))
		{
			instance_destroy(obj_player_sword_sparks)
		}
		audio_stop_sound(snd_electricity)
	
		object_player2_0_sprites.y = obj_player.y+1
	
		switch2 = 1
		
		//progress blackhole obj to next code stage
		obj_blackhole_bg_truebackground.scrnbg = 2
	
	
	
		if (instance_exists(object_player2_0_sprites))
		{
			if (global.facingDir = 1)
			{
				object_player2_0_sprites.sprite_index = spr_death_right	
				object_player2_0_sprites.image_index = 0
			}
			else if (global.facingDir = -1)
			{
				object_player2_0_sprites.sprite_index = spr_death_left
				object_player2_0_sprites.image_index = 0
			}
		}
		
		global.charging = 0
		global.charge_ready = 0
		global.nanoshield = 0
		global.invisibility = 0
		global.nuclearblast = 0
		global.shockwave = 0
		
		global.dash2 = 0
		global.dash2_spark = 0
		global.dashbegin2 = 0
		
		global.pause_player = 1
		
		instance_destroy()
		exit
	}
}