function Invisibility() {
	if (state = Invisibility)
	{
		with(object_player2_0_sprites)
		{
			y = obj_player.y+1;
			x = obj_player.x;
			if (global.lockdown_facingDir == 1)
			{
				global.invisibility_prep = 1
				image_speed = 1
				if (global.facingDir == -1)
			    {
			        if (started_invisible = 0) && (image_index < image_number -1)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_left;
			        image_index = 0;
			        started_invisible = 1;
			        }
			        if (started_invisible = 1) && (image_index < image_number -1) && (image_index < 20)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_left;
			        started_invisible = 1;
			        }
					if (started_invisible = 1) && (image_index < image_number -1) && (image_index >= 20)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_left;
			        started_invisible = 1;
					global.invisibility = 1;
			        }
			        if (image_index >= image_number -1) && (started_invisible = 1)
			        {
						global.lockdown_facingDir = 0;
						started_invisible = 0;
						y = obj_player.y+1;
			            x = obj_player.x;
						with(obj_player)
						{
							global.invisibility_prep = 0
							State_machine_switch_state(Idle);
						}
					}
			    }
			    if (global.facingDir == 1)
			    {
			        if (started_invisible = 0) && (image_index < image_number -1)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_right;
			        image_index = 0;
			        started_invisible = 1;
			        }
			        if (started_invisible = 1) && (image_index < image_number -1) && (image_index < 20)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_right;
			        started_invisible = 1;
			        }
					if (started_invisible = 1) && (image_index < image_number -1) && (image_index >= 20)
			        {
			        global.lockdown_facingDir = 1;
			        sprite_index = spr_invisibleprep_right;
			        started_invisible = 1;
					global.invisibility = 1;
			        }
			        if (image_index >= image_number -1) && (started_invisible = 1)
			        {
			            started_invisible = 0;
						global.lockdown_facingDir = 0;
						y = obj_player.y+1;
			            x = obj_player.x;
						with(obj_player)
						{
							global.invisibility_prep = 0
							State_machine_switch_state(Idle);
						}
			        }
			    }
			}
		}
	}


}
