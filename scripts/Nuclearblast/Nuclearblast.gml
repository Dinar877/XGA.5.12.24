function Nuclearblast() {
	if (state = Nuclearblast)
	{
	with(object_player2_0_sprites)
	{
		y = obj_player.y+1;
		x = obj_player.x;
		if (global.lockdown_facingDir == 1)
		{
		    if (global.facingDir == -1)
		    {
		        if (started_nanoshield = 0) && (image_index < image_number -1)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_left_slow;
		        image_index = 0;
		        started_nanoshield = 1;
		        }
		        if (started_nanoshield = 1) && (image_index < image_number -1) && (image_index < 20)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_left_slow;
		        started_nanoshield = 1;
		        }
				if (started_nanoshield = 1) && (image_index < image_number -1) && (image_index >= 20)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_left_slow;
		        started_nanoshield = 1;
				global.nuclearblast = 1;
			
				surface2_alpha = 0.3
				surface2neg = 0
				surface2pos = 1
		        }
		        if (image_index >= image_number -1) && (started_nanoshield = 1)
		        {
					global.lockdown_facingDir = 0;
					started_nanoshield = 0;
					y = obj_player.y+1;
		            x = obj_player.x;
					with(obj_player)
					{
					State_machine_switch_state(Idle);
					}
				}
		    }
		    if (global.facingDir == 1)
		    {
		        if (started_nanoshield = 0) && (image_index < image_number -1)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_right_slow;
		        image_index = 0;
		        started_nanoshield = 1;
		        }
		        if (started_nanoshield = 1) && (image_index < image_number -1) && (image_index < 20)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_right_slow;
		        started_nanoshield = 1;
		        }
				if (started_nanoshield = 1) && (image_index < image_number -1) && (image_index >= 20)
		        {
		        global.lockdown_facingDir = 1;
		        sprite_index = spr_invisibleprep_right_slow;
		        started_nanoshield = 1;
				global.nuclearblast = 1;
			
				surface2_alpha = 0.3
				surface2neg = 0
				surface2pos = 1
		        }
		        if (image_index >= image_number -1) && (started_nanoshield = 1)
		        {
		            started_nanoshield = 0;
					global.lockdown_facingDir = 0;
					y = obj_player.y+1;
		            x = obj_player.x;
					with(obj_player)
					{
					State_machine_switch_state(Idle);
					}
		        }
		    }
		}
	}
	}


}
