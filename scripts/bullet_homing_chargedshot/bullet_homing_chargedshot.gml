function bullet_homing_chargedshot() {
	if (stopper_bullet = 1)
	{
	global.bullet = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet)
	instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_megablast_effect)
	stopper_bullet = 0;
	audio_stop_sound(snd_beam2charged)
	snd = audio_play_sound(snd_beam2charged,1000,false,global.sfx_volume)
	audio_sound_gain(snd,global.sfx_volume,0)
	audio_sound_gain(snd,0,1000)
	}
    
	    with(obj_blast_effect)
	    {
	    //left or right
	    if (sprite_index = spr_HOMING_uncharged_blast_left)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_left;
	            hspd = -10;
	            vspd = 0;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_left;
						hspd = -10;
						vspd = -2;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_left;
			            hspd = -10;
			            vspd = 2;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_HOMING_uncharged_blast_right)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_right;
	            hspd = 10;
	            vspd = 0;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_right;
						hspd = 10;
						vspd = -2;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_right;
			            hspd = 10;
			            vspd = 2;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    //up or down
	    else if (sprite_index = spr_HOMING_uncharged_blast_up)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_up;
	            hspd = 0;
	            vspd = -10;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_up;
						hspd = -2;
						vspd = -10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_up;
			            hspd = 2;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_HOMING_uncharged_blast_down)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_down;
	            hspd = 0;
	            vspd = 10;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_down;
						hspd = -2;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_down;
			            hspd = 2;
			            vspd =10;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    //upLeftorRight
	    else if (sprite_index = spr_HOMING_uncharged_blast_upright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_rightup;
	            hspd = 10;
	            vspd = -10;
	            shootlimit = 1;
					if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_rightup;
						hspd = 10;
						vspd = -5;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_rightup;
			            hspd = 5;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_HOMING_uncharged_blast_upleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {            
	            sprite_index = spr_HOMING_charged_leftup;
	            hspd = -10;
	            vspd = -10;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_leftup;
						hspd = -10;
						vspd = -5;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_leftup;
			            hspd = -5;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
    
	    //downLeft or right
	    else if (sprite_index = spr_HOMING_uncharged_blast_downright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_rightdown;
	            hspd = 10;
	            vspd = 10;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_rightdown;
						hspd = 5;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_rightdown;
			            hspd = 10;
			            vspd = 5;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_HOMING_uncharged_blast_downleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_HOMING_charged_leftdown;
	            hspd = -10;
	            vspd = 10;
	            shootlimit = 1;
				if (global.beam_spread_available = 1)
					{
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_HOMING_charged_leftdown;
						hspd = -5;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_HOMING_charged_leftdown;
			            hspd = -10;
			            vspd = 5;
			            shootlimit = 1;
						charge = 1;
					}
					}
	            }
	        }
	    }
    
	    with(obj_bullet_creator)
	        {
	        stop1 = 0;
	        stopper_bullet_creation = 0;
	        }
    
	    }
    
	with(global.bullet)
	{
		charge = 1	
	}




}
