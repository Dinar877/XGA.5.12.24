function sword_hurtenemycode_noeffect() {
	with(obj_player_sword_hitbox)
	{
		var bbox_difference1 = floor((bbox_right-bbox_left)/6)
		var bbox_difference2 = floor((bbox_bottom-bbox_top)/6)
	
	
		//straight horizontal line check across sprite
	#region
		if (position_meeting(bbox_left,y,other))
		{
			instance_create_layer(bbox_left,y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y,other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y,other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y,other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y,other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y,other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y,other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y,layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	#endregion
	
		//bottom half check across sprite
	#region
		if (position_meeting(bbox_left,y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left,y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y+(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y+(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left,y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left,y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y+(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y+(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left,y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y+(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y+(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	#endregion
	
		//top half check across sprite
	#region
		if (position_meeting(bbox_left,y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left,y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y-(bbox_difference2*1),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y-(bbox_difference2*1),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left,y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left,y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y-(bbox_difference2*2),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y-(bbox_difference2*2),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	
		if (position_meeting(bbox_left,y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left,y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+bbox_difference1,y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+bbox_difference1,y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*2),y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*2),y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*3),y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*3),y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*4),y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*4),y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*5),y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*5),y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
		if (position_meeting(bbox_left+(bbox_difference1*6),y-(bbox_difference2*3),other))
		{
			instance_create_layer(bbox_left+(bbox_difference1*6),y-(bbox_difference2*3),layer_get_id("Inst_scrn"),obj_player_sword_bullethitnoeffect)
		}
	#endregion
	}




}
