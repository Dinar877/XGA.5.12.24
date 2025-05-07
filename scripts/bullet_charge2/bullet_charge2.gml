function bullet_charge2() {
	if (stopper_bullet = 1)
	{
		global.bullet = instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_bullet)
		instance_create_layer(obj_blast_effect.x,obj_blast_effect.y,layer_get_id("Inst_level_0"),obj_megablast_effect)
		stopper_bullet = 0;
		audio_stop_sound(snd_beam1charged)
		snd = audio_play_sound(snd_beam1charged,1000,false,global.sfx_volume)
		audio_sound_gain(snd,global.sfx_volume,0)
		audio_sound_gain(snd,0,1000)
	}
    
	    with(obj_blast_effect)
	    {
	    //left or right
	    if (sprite_index = spr_shot_left)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_left;
	            hspd = -10;
	            vspd = 0;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_left	
			}
	    }
	    else if (sprite_index = spr_shot_right)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_right;
	            hspd = 10;
	            vspd = 0;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_right	
			}
	    }
	    //up or down
	    else if (sprite_index = spr_shot_up)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_up;
	            hspd = 0;
	            vspd = -10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_up	
			}
	    }
	    else if (sprite_index = spr_shot_down)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_down;
	            hspd = 0;
	            vspd = 10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_down	
			}
	    }
	    //upLeftorRight
	    else if (sprite_index = spr_shot_upright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_upright;
	            hspd = 10;
	            vspd = -10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_upright	
			}
	    }
	    else if (sprite_index = spr_shot_upleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {            
	            sprite_index = spr_bullet_charge2_upleft;
	            hspd = -10;
	            vspd = -10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_upleft
			}
	    }
    
	    //downLeft or right
	    else if (sprite_index = spr_shot_downright)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_downright;
	            hspd = 10;
	            vspd = 10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_downright	
			}
	    }
	    else if (sprite_index = spr_downleft)
	    {
	        with(global.bullet)
	        {
	            if (shootlimit = 0)
	            {
	            sprite_index = spr_bullet_charge2_downleft;
	            hspd = -10;
	            vspd = 10;
	            shootlimit = 1;
	            }
	        }
			with(obj_megablast_effect)
			{
				sprite_index = spr_megashot_downleft	
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
