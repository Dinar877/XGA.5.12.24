function bullet_spread_chargedshot() {
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
	    if (sprite_index = spr_Spread_blasteffect_left)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_left;
	            hspd = -10;
	            vspd = 0;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_left;
						hspd = -10;
						vspd = -2;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_left;
			            hspd = -10;
			            vspd = 2;
			            shootlimit = 1;
						charge = 1;
					}
			
	            }
	        }
	    }
	    else if (sprite_index = spr_Spread_blasteffect_right)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_right;
	            hspd = 10;
	            vspd = 0;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_right;
						hspd = 10;
						vspd = -2;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_right;
			            hspd = 10;
			            vspd = 2;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
	    //up or down
	    else if (sprite_index = spr_Spread_blasteffect_up)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_up;
	            hspd = 0;
	            vspd = -10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_up;
						hspd = -2;
						vspd = -10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_up;
			            hspd = 2;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_Spread_blasteffect_down)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_down;
	            hspd = 0;
	            vspd = 10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_down;
						hspd = -2;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_down;
			            hspd = 2;
			            vspd =10;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
	    //upLeftorRight
	    else if (sprite_index = spr_Spread_blasteffect_upright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_upright;
	            hspd = 10;
	            vspd = -10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_upright;
						hspd = 10;
						vspd = -5;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_upright;
			            hspd = 5;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_Spread_blasteffect_upleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {            
	            sprite_index = spr_bulletSpread_charge2_upleft;
	            hspd = -10;
	            vspd = -10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_upleft;
						hspd = -10;
						vspd = -5;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_upleft;
			            hspd = -5;
			            vspd = -10;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
    
	    //downLeft or right
	    else if (sprite_index = spr_Spread_blasteffect_downright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_downright;
	            hspd = 10;
	            vspd = 10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_downright;
						hspd = 5;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_downright;
			            hspd = 10;
			            vspd = 5;
			            shootlimit = 1;
						charge = 1;
					}
	            }
	        }
	    }
	    else if (sprite_index = spr_Spread_blasteffect_downleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bulletSpread_charge2_downleft;
	            hspd = -10;
	            vspd = 10;
	            shootlimit = 1;
					var instbullet1 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side1)
		            var instbullet2 = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet_side2)
					with(instbullet1)
					{
						sprite_index = spr_bulletSpread_charge2_downleft;
						hspd = -5;
						vspd = 10;
						shootlimit = 1;
						charge = 1;
					}
					with(instbullet2)
					{
						sprite_index = spr_bulletSpread_charge2_downleft;
			            hspd = -10;
			            vspd = 5;
			            shootlimit = 1;
						charge = 1;
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
