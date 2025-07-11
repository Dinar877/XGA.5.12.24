/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()


if (jump_pressed) && (instance_exists(spawnerID)) && (textyID > -1)
&& (room != rm_trueintro_opening_TEXT) && (room != rm_trueintro_opening_xga) && (room != rm_endgame_TEXT)
{	
	with(textyID)
	{
		if (!variable_instance_exists(self,"switch_stopper"))
		{
			if (switch2 = 0) && (time+message_pos >= text_length)	
			{
				//destroy previous text and text arrow
				with(obj_text_spawning_arrow.textyID)
				{
					instance_destroy()
				
					with(obj_text_spawning_arrow)
					{
						instance_destroy()	
					}
				}
			
				//for intro npc dialog
				if (instance_exists(obj_scrnDark_navigational2_test1))
				&& ((room = rm_trueintro_1) or (room = rm_trueintro_1_1) or (room = rm_trueintro_2) or (room = rm_trueintro_2_1) or (room = rm_trueintro_3))
				{
					with(obj_scrnDark_navigational2_test1)
					{
						sprite_index = spr_bg_navigational2_rev
						image_speed = 1	
						
						global.navigation = 0;
						global.navigation_effect = 0;
						global.pause_player = 0;
						global.upgrade_process_data = 0
						instance_activate_object(obj_link_healthUI)
						instance_activate_object(obj_link_map)	
		
						with(obj_player)
						{
							jump = 0
							jump_pressed = 0
						}
					}
				
					if (instance_exists(obj_scrnDark_navigational))
					{
						with(obj_scrnDark_navigational)
						{
							instance_destroy()	
						}
					}
				
					if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy()	
						}
					}
				}
				
				//for BH dialog
				if (instance_exists(obj_scrnDark_navigational2_test1))
				&& ((room == rm_11_7_6) or (room == rm_11_7_6_xgatest))
				{
					with(obj_scrnDark_navigational2_test1)
					{
						global.navigation = 0;
						global.navigation_effect = 0;
						global.pause_player = 0;
						global.upgrade_process_data = 0
						instance_activate_object(obj_link_healthUI)
						instance_activate_object(obj_link_map)	
		
						with(obj_player)
						{
							jump = 0
							jump_pressed = 0
						}
						
						instance_destroy();
					}
				
					if (instance_exists(obj_scrnDark_navigational))
					{
						with(obj_scrnDark_navigational)
						{
							instance_destroy()	
						}
					}
				
					if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy()	
						}
					}
					
					//BH
					if (instance_exists(obj_bh))
					{
						if (obj_bh.newTextAvailable = 3)
						{
							global.cutsceneID[Cutscenes.blackholetalk1] = 1;	
							instance_create_layer(644,520,layer_get_id("Inst_level_0"),obj_bh_spawn_sword);
						}
						else if (obj_bh.newTextAvailable = 4)
						{
							global.cutsceneID[Cutscenes.blackholetalk2] = 1;	
						}
						else if (obj_bh.newTextAvailable = 5)
						{
							global.cutsceneID[Cutscenes.blackholetalk3] = 1;	
						}
					}
				}
			
				exit
			}
		}
		else if (variable_instance_exists(self,"switch_stopper"))
		{
			if (switch2 = 0) && (time+message_pos >= text_length) && (switch_stopper == 0)
			{
				//destroy previous text and text arrow
				with(obj_text_spawning_arrow.textyID)
				{
					instance_destroy()
				
					with(obj_text_spawning_arrow)
					{
						instance_destroy()	
					}
				}
			
				//for intro npc dialog
				if (instance_exists(obj_scrnDark_navigational2_test1))
				&& ((room = rm_trueintro_1) or (room = rm_trueintro_1_1) or (room = rm_trueintro_2) or (room = rm_trueintro_2_1) or (room = rm_trueintro_3))
				{
					with(obj_scrnDark_navigational2_test1)
					{
						sprite_index = spr_bg_navigational2_rev
						image_speed = 1	
						
						global.navigation = 0;
						global.navigation_effect = 0;
						global.pause_player = 0;
						global.upgrade_process_data = 0
						instance_activate_object(obj_link_healthUI)
						instance_activate_object(obj_link_map)	
		
						with(obj_player)
						{
							jump = 0
							jump_pressed = 0
						}
					}
				
					if (instance_exists(obj_scrnDark_navigational))
					{
						with(obj_scrnDark_navigational)
						{
							instance_destroy()	
						}
					}
				
					if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy()	
						}
					}
				}
			
				exit
			}
		}
	}
	
	if (!instance_exists(obj_item_link))
	{
		var tex = instance_create_depth(spawnerID.x+1,spawnerID.y+7,id.depth-5,textyID);
	}
	else var tex = instance_create_depth(obj_camera.x,obj_camera.y-5,id.depth-5,textyID);

	with(tex)
		{
			alpha = 1;
			spawnerID = obj_text_spawning_arrow.spawnerID
			text = spawnerID.text;
			message_pos = spawnerID.time;
			pauser = 0;
			switch2 = 1
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
			
			if (obj_text_spawning_arrow.markerID > -1)
			{
				markerX = obj_text_spawning_arrow.markerX
				markerY = obj_text_spawning_arrow.markerY
				markerID = obj_text_spawning_arrow.markerID
			}
		}
		
	if (textyID > -1)
	{
		with(textyID)
		{
			if (switch2 = 0) && (text_length > 25)
			{
				instance_destroy()
			}
		}
	}
		
	if (textyID = obj_texty_TRUEgeneric_nonmarker)
		{
			with(tex)
			{
				string_positionY = obj_text_spawning_arrow.string_positionY;	
			}
		}
		
	if (textyID = obj_texty_generic_shorter)
		{
			with(tex)
			{
				string_positionY = obj_text_spawning_arrow.string_positionY;	
			}
		}
		
	if (textyID = obj_texty_intro_xga)
		{
			with(tex)
			{
				string_positionY = obj_text_spawning_arrow.string_positionY;	
			}
		}
	
	
	instance_destroy();
	exit
}
else if (jump_pressed) && (instance_exists(spawnerID)) && (room = rm_trueintro_opening_TEXT) //opening TEXT
&& (instance_exists(obj_texty_TRUEgeneric_nonmarker)) && (instance_exists(obj_intro_cutsceneplayer)) && (instance_exists(obj_text_spawning_trueintro_opening))
{	
	//everytime a non-end text spawning arrow is pressed, continue text
	with(obj_texty_TRUEgeneric_nonmarker)
	{
		if (switch2 = 0) && (time+message_pos >= text_length)
		&& (obj_text_spawning_trueintro_opening.new_cutscene < 3) && (obj_intro_cutsceneplayer.fadeup = 0)
		{
			trueintro_moveonswitch = 1
			
			//go to next cutscene sprite, switch
			obj_text_spawning_trueintro_opening.new_cutscene++
			
			//make cutscene object change sprite and y location
			obj_intro_cutsceneplayer.fadeup = 1
			
			
			//destroy previous text and text arrow
			with(obj_texty_TRUEgeneric_nonmarker)
			{
				instance_destroy()
				
				with(obj_text_spawning_arrow)
				{
					instance_destroy()	
				}
				
			}
			
			exit
		}
		else if (pauser_end_marker > 0) && (time+message_pos >= text_length) && (switch2 = 0) && (obj_text_spawning_trueintro_opening.new_cutscene >= 3)
		{
			instance_create_depth(0,0,id.depth-50000,obj_scrnDark_trueintro_opening_intro)
			audio_stop_sound(ost_ciri_TheMission)
			
			with(obj_texty_TRUEgeneric_nonmarker)
			{
				instance_destroy()	
			}
			
			with(obj_text_spawning_arrow)
				{
					instance_destroy()	
					exit
				}
			
			exit
		}
	}
	
	
	//spawn next text objects to continue reading text
		if (!instance_exists(obj_item_link))
			{
				var tex = instance_create_depth(spawnerID.x,spawnerID.y+7,id.depth-5,textyID);
			}
		else var tex = instance_create_depth(obj_camera.x-128,obj_camera.y,id.depth-5,textyID);

			with(tex)
				{
					alpha = 1;
					spawnerID = obj_text_spawning_arrow.spawnerID
					text = spawnerID.text;
					message_pos = spawnerID.time;
					pauser = 0;
					switch2 = 1
					string_positionY = 0;
					time = 0;
					text_length = string_length(text)
			
					if (obj_text_spawning_arrow.markerID > -1)
					{
						markerX = obj_text_spawning_arrow.markerX
						markerY = obj_text_spawning_arrow.markerY
						markerID = obj_text_spawning_arrow.markerID
					}
				}
		
		
		
			if (textyID = obj_texty_TRUEgeneric_nonmarker)
				{
					with(tex)
					{
						string_positionY = obj_text_spawning_arrow.string_positionY;	
					}
				}
	

			
			if (textyID > -1)
			{
				with(textyID)
				{
					if (switch2 = 0) && (text_length > 25)
					{
						instance_destroy()
					}
				}
			}
			
	
		with(obj_text_spawning_arrow)
		{
			instance_destroy();
		}
		
	exit

}
else if (jump_pressed) && (instance_exists(spawnerID)) && (room = rm_trueintro_opening_xga) //xga intro 2
&& (instance_exists(obj_texty_intro_xga)) && (instance_exists(obj_text_spawning_trueintro_opening))
{	
	//everytime a non-end text spawning arrow is pressed, continue text
	with(obj_texty_intro_xga)
	{
		if (switch2 = 0) && (time+message_pos >= text_length)
		{
			switch2 = 1
			
			instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_trueintro_opening_intro1)
			
			//destroy previous text and text arrow
			with(obj_texty_intro_xga)
			{
				instance_destroy()
				
				with(obj_text_spawning_arrow)
				{
					instance_destroy()	
				}
				
			}
			
			exit
		}
	}
	
	
	//spawn next text objects to continue reading text
		if (!instance_exists(obj_item_link))
			{
				var tex = instance_create_depth(spawnerID.x,spawnerID.y+7,id.depth-5,textyID);
			}
		else var tex = instance_create_depth(obj_camera.x-128,obj_camera.y,id.depth-5,textyID);

			with(tex)
				{
					alpha = 1;
					spawnerID = obj_text_spawning_arrow.spawnerID
					text = spawnerID.text;
					message_pos = spawnerID.time;
					pauser = 0;
					switch2 = 1
					string_positionY = 0;
					time = 0;
					text_length = string_length(text)
			
					if (obj_text_spawning_arrow.markerID > -1)
					{
						markerX = obj_text_spawning_arrow.markerX
						markerY = obj_text_spawning_arrow.markerY
						markerID = obj_text_spawning_arrow.markerID
					}
				}
		
		
		
			if (textyID = obj_texty_intro_xga)
				{
					with(tex)
					{
						string_positionY = obj_text_spawning_arrow.string_positionY;	
					}
				}
	

			
			if (textyID > -1)
			{
				with(textyID)
				{
					if (switch2 = 0) && (text_length > 25)
					{
						instance_destroy()
					}
				}
			}
			
	
		with(obj_text_spawning_arrow)
		{
			instance_destroy();
		}


		exit
}
else if (jump_pressed) //ENDGAME
&& (instance_exists(spawnerID)) 
&& (room = rm_endgame_TEXT)
&& (instance_exists(obj_texty_TRUEgeneric_nonmarker)) 
&& (instance_exists(obj_endgame_cutsceneplayer)) 
&& (instance_exists(obj_text_spawning_endgame))
{	
	//everytime a non-end text spawning arrow is pressed, continue text
	with(obj_texty_TRUEgeneric_nonmarker)
	{
		if (switch2 = 0) && (time+message_pos >= text_length)
		&& (obj_text_spawning_endgame.new_cutscene < 5) && (obj_endgame_cutsceneplayer.fadeup = 0)
		{
			trueintro_moveonswitch = 1
			
			//go to next cutscene sprite, switch
			obj_text_spawning_endgame.new_cutscene++
			obj_text_spawning_endgame.timer11 = 0
			obj_text_spawning_endgame.new1 = 0
			
			//make cutscene object change sprite and y location
			obj_endgame_cutsceneplayer.fadeup = 1
			
			
			//destroy previous text and text arrow
			with(obj_texty_TRUEgeneric_nonmarker)
			{
				instance_destroy()
				
				with(obj_text_spawning_arrow)
				{
					instance_destroy()	
				}
				
			}
			
			exit
		}
		else if (pauser_end_marker > 0) && (time+message_pos >= text_length) && (switch2 = 0) && (obj_text_spawning_endgame.new_cutscene >= 5)
		{
			//instance_create_depth(0,0,id.depth-50000,obj_scrnDark_trueintro_opening_intro)
			//audio_stop_sound(ost_ciri_TheMission)
			
			with(obj_texty_TRUEgeneric_nonmarker)
			{
				instance_destroy()	
			}
			
			with(obj_text_spawning_arrow)
				{
					instance_destroy()	
				}
				
				
			obj_text_spawning_endgame.new_cutscene++
			obj_endgame_cutsceneplayer.fadeup = 1
			
			exit
		}
	}
	
	
	
	//spawn next text objects to continue reading text, if not read all text yet
		if (!instance_exists(obj_item_link))
			{
				var tex = instance_create_depth(spawnerID.x,spawnerID.y+7,id.depth-5,textyID);
			}
		else var tex = instance_create_depth(obj_camera.x-128,obj_camera.y,id.depth-5,textyID);

			with(tex)
				{
					alpha = 1;
					spawnerID = obj_text_spawning_arrow.spawnerID
					text = spawnerID.text;
					message_pos = spawnerID.time;
					pauser = 0;
					switch2 = 1
					string_positionY = 0;
					time = 0;
					text_length = string_length(text)
			
					if (obj_text_spawning_arrow.markerID > -1)
					{
						markerX = obj_text_spawning_arrow.markerX
						markerY = obj_text_spawning_arrow.markerY
						markerID = obj_text_spawning_arrow.markerID
					}
				}
		
		
		
			if (textyID = obj_texty_TRUEgeneric_nonmarker)
				{
					with(tex)
					{
						string_positionY = obj_text_spawning_arrow.string_positionY;	
					}
				}
	

			
			if (textyID > -1)
			{
				with(textyID)
				{
					if (switch2 = 0) && (text_length > 25)
					{
						instance_destroy()
					}
				}
			}
			
	
		with(obj_text_spawning_arrow)
		{
			instance_destroy();
		}

		
	exit

}
