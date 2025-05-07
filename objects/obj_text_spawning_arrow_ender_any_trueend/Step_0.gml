/// @description Insert description here
// You can write your code in this editor
instance_destroy(obj_texty_generic)
instance_destroy(obj_texty_skip)
instance_destroy(obj_texty_marker)
instance_destroy(obj_texty_generic_shorter)
instance_destroy(obj_texty_generic_upgrade)

	if (instance_number(textyID) < 1)
	{
		var tex = instance_create_depth(spawnerID.x+1,spawnerID.y+7,self.depth-5,textyID);

		with(tex)
		{
			time = 0;
			message_pos = 0;
			text = " OBJECTIVE UNDERSTOOD?"
			string(text)
			text_length = string_length(text)
			pauser = 0;
			
			font_size = font_get_size(font)
	
			draw_set_font(font);
	
			text_width = string_width_ext(text,font_size+(font_size/2),280);
			text_height = string_height_ext(text,font_size+(font_size/2),30);
			spawnerID = other.spawnerID
			markerX = other.markerX;
			markerY = other.markerY;
			markerID = other.markerID;
			switch_MARKERBOX1 = 1
			
			var texty1 = instance_create_depth(x+6,y+21,self.depth-5,obj_texty_yesbox)
			with(texty1)
			{
				time = 0;
				message_pos = 0;
				text = " YES"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 1;
				spawnerID = other.spawnerID
				markerX = other.markerX;
				markerY = other.markerY;
				markerID = other.markerID;
			}
			var texty2 = instance_create_depth(x+69,y+21,self.depth-5,obj_texty_nobox)
			with(texty2)
			{
				time = 0;
				message_pos = 0;
				text = "  NO"
				string(text)
				text_length = string_length(text)
				pauser = 0;
				selected = 0;
				spawnerID = other.spawnerID
				markerX = other.markerX;
				markerY = other.markerY;
				markerID = other.markerID;
			}
			
			
			if (markerID > -1)
			{
				var texty3 = instance_create_depth(x+132,y+21,self.depth-5,obj_texty_exitbox)
				with(texty3)
				{
					time = 0;
					message_pos = 0;
					text = " WAYPOINT"
					string(text)
					text_length = string_length(text)
					pauser = 0;
					selected = 0;
					spawnerID = other.spawnerID
					markerX = other.markerX;
					markerY = other.markerY;
					markerID = other.markerID;
				
				}
			}
		}
	}
	
	
	instance_destroy();