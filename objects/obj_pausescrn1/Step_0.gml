/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()
//Gamepad_getname()



if (delay < 1)
{
	delay += (1/20);	
}


//Map
if (new1 == 0) && (state == 0)
{	
	#region
	
	//delete previous menu stuff
		#region
		if (instance_exists(obj_textblock_generic))
				{
					with(obj_textblock_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_controls_generic))
				{
					with(obj_textblock_controls_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_heading))
				{
					with(obj_textblock_heading)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_mover_generic))
				{
					with(obj_textblock_mover_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow_generic))
				{
					with(obj_textselector_arrow_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_texty_heading))
				{
					with(obj_texty_heading)
					{
						instance_destroy();	
					}
				}
		

		//map menu stuff delete
		if (instance_exists(obj_maptile_marker_cursor))
				{
					with(obj_maptile_marker_cursor)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowdown))
				{
					with(obj_pausescrn_arrowdown)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowup))
				{
					with(obj_pausescrn_arrowup)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowleft))
				{
					with(obj_pausescrn_arrowleft)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowright))
				{
					with(obj_pausescrn_arrowright)
					{
						instance_destroy();	
					}
				}

				
		//controllers
		if (instance_exists(obj_NEWpausemenu_controller))
				{
					with(obj_NEWpausemenu_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_controls_controller1))
				{
					with(obj_NEWpausemenu_controls_controller1)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_screensize_controller))
				{
					with(obj_NEWpausemenu_screensize_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_prestate_controller))
				{
					with(obj_NEWpausemenu_prestate_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_audio_controller))
				{
					with(obj_NEWpausemenu_audio_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pause_audiobar))
				{
					with(obj_pause_audiobar)
					{
						instance_destroy();	
					}
				}
	
		//screensize blocks
		if (instance_exists(obj_textblock_320x180))
				{
					with(obj_textblock_320x180)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_640x360))
				{
					with(obj_textblock_640x360)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_960x540))
				{
					with(obj_textblock_960x540)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock1920x1080))
				{
					with(obj_textblock1920x1080)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_1366x768))
				{
					with(obj_textblock_1366x768)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_fullscrn))
				{
					with(obj_textblock_fullscrn)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow))
				{
					with(obj_textselector_arrow)
					{
						instance_destroy();	
					}
				}
		#endregion
		
	global.pause_map = 1;
	global.pause_logbook = 0
	new1 = 1;
	instate = 0
	prestate = 1
	
	
	with(obj_texty_heading)
	{
		instance_destroy();	
	}
	
	#endregion
	
	//map markerdogshite
	messagemap1 = "PRESS 'JUMP' TO \nPLACE/REMOVE MAP MARKERS."
	textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

	with(textmap1)
	{
		text = other.messagemap1;
		spd = 0;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	
	
	message2 = "" //L
	
	instance_create_depth(x+165,y+28,self.depth-1,obj_pausescrn_arrowup);
	instance_create_depth(x+165,y+146,self.depth-1,obj_pausescrn_arrowdown);
	instance_create_depth(x+25,y+94,self.depth-1,obj_pausescrn_arrowleft);
	instance_create_depth(x+295,y+94,self.depth-1,obj_pausescrn_arrowright);
	instance_create_depth(x+160,y+90,self.depth-1,obj_maptile_marker_cursor);
	
	tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);

	with(tex)
	{
		text = other.message2;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	message3 = "" //R

	tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message3;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	if (global.sector_active = -1)
	{
		message4 = "   ???"
	}
	else message4 = "SECTOR " + string(global.sector_active)

	tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message4;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}

	message5 = "OPTIONS"

	tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message5;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	message5 = "UPGRADES"

	tex2 = instance_create_depth(x+241,y+0,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message5;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
}

//Upgrades
if (new1 == 0) && (state == 1)
{
	#region
	
	global.pause_map = 0;
	global.pause_logbook = 0
	new1 = 1;
	instate = 0
	prestate = 1
	
	//delete previous menu stuff
	#region
		if (instance_exists(obj_textblock_generic))
				{
					with(obj_textblock_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_controls_generic))
				{
					with(obj_textblock_controls_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_heading))
				{
					with(obj_textblock_heading)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_mover_generic))
				{
					with(obj_textblock_mover_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow_generic))
				{
					with(obj_textselector_arrow_generic)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_texty_heading))
				{
					with(obj_texty_heading)
					{
						instance_destroy();	
					}
				}

		//map menu stuff delete
		if (instance_exists(obj_maptile_marker_cursor))
				{
					with(obj_maptile_marker_cursor)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowdown))
				{
					with(obj_pausescrn_arrowdown)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowup))
				{
					with(obj_pausescrn_arrowup)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowleft))
				{
					with(obj_pausescrn_arrowleft)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pausescrn_arrowright))
				{
					with(obj_pausescrn_arrowright)
					{
						instance_destroy();	
					}
				}

				
		//controllers
		if (instance_exists(obj_NEWpausemenu_controller))
				{
					with(obj_NEWpausemenu_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_controls_controller1))
				{
					with(obj_NEWpausemenu_controls_controller1)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_screensize_controller))
				{
					with(obj_NEWpausemenu_screensize_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_prestate_controller))
				{
					with(obj_NEWpausemenu_prestate_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_NEWpausemenu_audio_controller))
				{
					with(obj_NEWpausemenu_audio_controller)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_pause_audiobar))
				{
					with(obj_pause_audiobar)
					{
						instance_destroy();	
					}
				}
	
		//screensize blocks
		if (instance_exists(obj_textblock_320x180))
				{
					with(obj_textblock_320x180)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_640x360))
				{
					with(obj_textblock_640x360)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_960x540))
				{
					with(obj_textblock_960x540)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock1920x1080))
				{
					with(obj_textblock1920x1080)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_1366x768))
				{
					with(obj_textblock_1366x768)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textblock_fullscrn))
				{
					with(obj_textblock_fullscrn)
					{
						instance_destroy();	
					}
				}
		if (instance_exists(obj_textselector_arrow))
				{
					with(obj_textselector_arrow)
					{
						instance_destroy();	
					}
				}
		#endregion
	

	message2 = "" //L

	tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);
	
	with(tex)
	{
		text = other.message2;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	message3 = "" //R

	tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message3;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	
	message4 = "UPGRADES"

	tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message4;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}

	message5 = "MAP"

	tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message5;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	message5 = "OPTIONS"

	tex2 = instance_create_depth(x+241,y+0,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message5;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}

		//upgrade blocks
		if (!instance_exists(obj_NEWpausemenu_controller))
		{
			var inst = instance_create_layer(x+65,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_controller);
		}
	#endregion
}

//Normal options menu
if (room != rm_load)
{
	//Options menu - Inner
	if (prestate = 0) && (state = 2)
	{
		//Screen sizes
		if (new1 == 0) && (instate == 1)
		{
			#region
			global.pause_map = 0;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion


			message2 = "" //L

			tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);

			with(tex)
			{
				text = other.message2;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message3 = "" //R

			tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message3;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
	
			message4 = "SCREEN SIZE"

			tex2 = instance_create_depth(x+124,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			message5 = "UPGRADES"

			tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message5 = "MAP"

			tex2 = instance_create_depth(x+242,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			messagemap1 = "HERE YOU CAN CHANGE THE SCREEN SIZE."
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//screen size blocks
				if (!instance_exists(obj_NEWpausemenu_screensize_controller))
				{
					var inst = instance_create_layer(x+65,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_screensize_controller);
				}
	
	
			new1 = 1;
			#endregion
		}

		//Controls
		if (new1 == 0) && (instate == 2)
		{
			#region
	
			new1 = 1;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
			
			message2 = "" //L
		
			tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);

			with(tex)
			{
				text = other.message2;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message3 = "" //R

			tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message3;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
	
			message4 = "CONTROLS"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			message5 = "UPGRADES"

			tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message5 = "MAP"

			tex2 = instance_create_depth(x+242,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//map markerdogshite
			if (gamepad_is_connected(correct_slot))
			{
				if (xbox_or_ps = 1)
				{
					messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
				}
				else if (xbox_or_ps = -1)
				{
					messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
				}
			}
			else if (!gamepad_is_connected(correct_slot))
			{
				messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
			}
	
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = 0;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//controls blocks
				if (!instance_exists(obj_NEWpausemenu_controls_controller1))
				{
					var inst = instance_create_layer(x+35,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_controls_controller1);
				}

			new1 = 1;
			#endregion
		}
	
		//Audio
		if (new1 == 0) && (instate == 3)
		{
			#region
	
			new1 = 1;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
			
			message2 = "" //L
		
			tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);

			with(tex)
			{
				text = other.message2;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message3 = "" //R

			tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message3;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
	
			message4 = "AUDIO"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			message5 = "UPGRADES"

			tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message5 = "MAP"

			tex2 = instance_create_depth(x+242,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}


			messagemap1 = "CHANGE AUDIO SETTINGS."

	
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = 0;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//controls blocks
				if (!instance_exists(obj_NEWpausemenu_audio_controller))
				{
					var inst = instance_create_layer(x+35,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_audio_controller);
				}
			#endregion
		}
	
	}
	else if (prestate = 1) && (state = 2) //Options Menu - Outer
	{
		if (new1 = 0) && (instate = 0)
		{
			global.pause_logbook = 0
			global.pause_map = 0
			new1 = 1;
			instate = 0


			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
				
			message2 = "" //L

			tex = instance_create_depth(x+8,y+2,self.depth-1,obj_texty_heading);

			with(tex)
			{
				text = other.message2;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message3 = "" //R

			tex2 = instance_create_depth(x+308,y+2,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message3;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
	
			message4 = "OPTIONS"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			message5 = "UPGRADES"

			tex2 = instance_create_depth(x+33,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			message5 = "MAP"

			tex2 = instance_create_depth(x+242,y+0,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message5;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			messagemap1 = "HERE YOU CAN CHANGE SETTINGS."
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//screen size blocks
				if (!instance_exists(obj_NEWpausemenu_prestate_controller))
				{
					var inst = instance_create_layer(x+65,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_prestate_controller);
				}
		}
	}
}
else if (room == rm_load) //title screen options menu
{
	//Options menu - Inner
	if (prestate = 0) && (state = 2)
	{
		//Screen sizes
		if (new1 == 0) && (instate == 1)
		{
			#region
			global.pause_map = 0;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion

	
			message4 = "SCREEN SIZE"

			tex2 = instance_create_depth(x+124,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			messagemap1 = "HERE YOU CAN CHANGE THE SCREEN SIZE."
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//screen size blocks
				if (!instance_exists(obj_NEWpausemenu_screensize_controller))
				{
					var inst = instance_create_layer(x+65,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_screensize_controller);
				}
	
	
			new1 = 1;
			#endregion
		}

		//Controls
		if (new1 == 0) && (instate == 2)
		{
			#region
	
			new1 = 1;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
	
	
			message4 = "CONTROLS"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//map markerdogshite
			if (gamepad_is_connected(correct_slot))
			{
				if (xbox_or_ps = 1)
				{
					messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
				}
				else if (xbox_or_ps = -1)
				{
					messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
				}
			}
			else if (!gamepad_is_connected(correct_slot))
			{
				messagemap1 = "SWAP CURRENT INPUTS WITH OTHER ONES. \nPRESS 'JUMP' TO CONFIRM."
			}
	
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = 0;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//controls blocks
				if (!instance_exists(obj_NEWpausemenu_controls_controller1))
				{
					var inst = instance_create_layer(x+35,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_controls_controller1);
				}

			new1 = 1;
			#endregion
		}
	
		//Audio
		if (new1 == 0) && (instate == 3)
		{
			#region
	
			new1 = 1;
			global.pause_logbook = 0
		
			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
	
	
			message4 = "AUDIO"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}


			messagemap1 = "CHANGE AUDIO SETTINGS."

	
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = 0;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//controls blocks
				if (!instance_exists(obj_NEWpausemenu_audio_controller))
				{
					var inst = instance_create_layer(x+35,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_audio_controller);
				}
			#endregion
		}
	
	}
	else if (prestate = 1) && (state = 2) //Options Menu - Outer
	{
		if (new1 = 0) && (instate = 0)
		{
			global.pause_logbook = 0
			global.pause_map = 0
			new1 = 1;
			instate = 0


			//delete previous menu stuff
			#region
			if (instance_exists(obj_textblock_generic))
					{
						with(obj_textblock_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_controls_generic))
					{
						with(obj_textblock_controls_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_heading))
					{
						with(obj_textblock_heading)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_mover_generic))
					{
						with(obj_textblock_mover_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow_generic))
					{
						with(obj_textselector_arrow_generic)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_texty_heading))
					{
						with(obj_texty_heading)
						{
							instance_destroy();	
						}
					}

			//map menu stuff delete
			if (instance_exists(obj_maptile_marker_cursor))
					{
						with(obj_maptile_marker_cursor)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowdown))
					{
						with(obj_pausescrn_arrowdown)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowup))
					{
						with(obj_pausescrn_arrowup)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowleft))
					{
						with(obj_pausescrn_arrowleft)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pausescrn_arrowright))
					{
						with(obj_pausescrn_arrowright)
						{
							instance_destroy();	
						}
					}

				
			//controllers
			if (instance_exists(obj_NEWpausemenu_controller))
					{
						with(obj_NEWpausemenu_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_controls_controller1))
					{
						with(obj_NEWpausemenu_controls_controller1)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_screensize_controller))
					{
						with(obj_NEWpausemenu_screensize_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_prestate_controller))
					{
						with(obj_NEWpausemenu_prestate_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_NEWpausemenu_audio_controller))
					{
						with(obj_NEWpausemenu_audio_controller)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_pause_audiobar))
					{
						with(obj_pause_audiobar)
						{
							instance_destroy();	
						}
					}
	
			//screensize blocks
			if (instance_exists(obj_textblock_320x180))
					{
						with(obj_textblock_320x180)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_640x360))
					{
						with(obj_textblock_640x360)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_960x540))
					{
						with(obj_textblock_960x540)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock1920x1080))
					{
						with(obj_textblock1920x1080)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_1366x768))
					{
						with(obj_textblock_1366x768)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textblock_fullscrn))
					{
						with(obj_textblock_fullscrn)
						{
							instance_destroy();	
						}
					}
			if (instance_exists(obj_textselector_arrow))
					{
						with(obj_textselector_arrow)
						{
							instance_destroy();	
						}
					}
			#endregion
	
			message4 = "OPTIONS"

			tex2 = instance_create_depth(x+134,y+5,self.depth-1,obj_texty_heading);

			with(tex2)
			{
				text = other.message4;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}
	
			messagemap1 = "HERE YOU CAN CHANGE SETTINGS."
			textmap1 = instance_create_depth(x+10,y+157,self.depth-1,obj_texty_heading);

			with(textmap1)
			{
				text = other.messagemap1;
				spd = other.spd;
				font = font_regular1;
	
				text_length = string_length(text)
				font_size = font_get_size(font)
	
				draw_set_font(font);
	
				text_width = string_width_ext(text,font_size+(font_size/2),280);
				text_height = string_height_ext(text,font_size+(font_size/2),30);
			}

			//screen size blocks
			if (!instance_exists(obj_NEWpausemenu_prestate_controller))
			{
				var inst = instance_create_layer(x+65,y+32,layer_get_id("Inst_healthui"),obj_NEWpausemenu_prestate_controller);
			}
		}
	}
}





//for debugging
if (L1) or (R1)
{
	var LR = 0;	
}


//Disable switching to different menus while changing the controls
if (instance_exists(obj_textblock_controls_generic))
{
	with(obj_textblock_controls_generic)
	{
		if (selected = 1)
		{
			//debugging 1
			if ((do_R1) && (obj_pausescrn1.R1))
			or ((do_L1) && (obj_pausescrn1.L1))
			{
				var this1 = 0;	
			}
			
			if (waiting = 1)
			{
				var waitingasd = 0;	
			}
			
			if (do_tab = 1) && ((obj_pausescrn1.shoot_pressed) or (obj_pausescrn1.L1) or (obj_pausescrn1.R1))
			{
				exit;
			}
			else if (do_L1 = 1) && ((obj_pausescrn1.shoot_pressed) or (obj_pausescrn1.L1) or (obj_pausescrn1.R1))
			{
				exit;
			}
			else if (do_R1 = 1) && ((obj_pausescrn1.shoot_pressed) or (obj_pausescrn1.L1) or (obj_pausescrn1.R1))
			{
				exit;
			}
		}
	}
}


//controlling the pause menu and changing states
//SHOOT PRESSED ACTIVATES BEFORE CHANGING CONTROLS!
if (prestate = 0) && (instate > 0) && (state = 2) 
&& (shoot_pressed) 
&& (global.pause_logbook = 0)
{
	prestate = 1
	instate = 0
	new1 = 0
}




//switching states - gamepad and non-gamepad
if (gamepad_is_connected(correct_slot))
{
	//going left
	if (sprite_index = spr_newpausescrn1_normal) && (L1) && (global.pause_logbook = 0) && (delay = 1)
	&& (room != rm_load) //no switching when in  title screen
	{
		image_index = 0;
		sprite_index = spr_newpausescrn1_normal_L;
		
		if (state = 0)
		{
			state = 2;
		}
		else state--
		new1 = 0;
		delay = 0
	}

	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			&& (room != rm_load) //no switching when in  title screen
			{
				with(other)
				{
					if (sprite_index = spr_newpausescrn1_normal) && (L1) && (global.pause_logbook = 0)
					{
						image_index = 0;
						sprite_index = spr_newpausescrn1_normal_L
						
						if (state = 0)
						{
							state = 2;
						}
						else state--
						new1 = 0;
						delay = 0
					}
				}
			}
		}
	}


	//going right
	if (sprite_index = spr_newpausescrn1_normal) && (R1) && (global.pause_logbook = 0) && (delay = 1)
	&& (room != rm_load) //no switching when in  title screen
	{
		image_index = 0;
		sprite_index = spr_newpausescrn1_normal_R
		
		if (state = 2)
		{
			state = 0;
		}
		else state++
		new1 = 0;
		delay = 0
	}

	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			&& (room != rm_load) //no switching when in  title screen
			{
				with(other)
				{
					if (sprite_index = spr_newpausescrn1_normal) && (R1) && (global.pause_logbook = 0)
					{
						image_index = 0;
						sprite_index = spr_newpausescrn1_normal_R
						
						if (state = 2)
						{
							state = 0;
						}
						else state++
						new1 = 0;
						delay = 0
					}
				}
			}
		}
	}
}
else if (!gamepad_is_connected(correct_slot))
{
	
	//going left
	if (sprite_index = spr_newpausescrn1_normal) && (L1) && (global.pause_logbook = 0) && (delay = 1)
	&& (room != rm_load) //no switching when in  title screen
	{
		image_index = 0;
		sprite_index = spr_newpausescrn1_normal_L;
		
		if (state = 0)
		{
			state = 2;
		}
		else state--
		new1 = 0;
		delay = 0
	}


	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			&& (room != rm_load) //no switching when in title screen
			{
				with(other)
				{
					if (sprite_index = spr_newpausescrn1_normal) && (L1) && (global.pause_logbook = 0)
					{
						image_index = 0;
						sprite_index = spr_newpausescrn1_normal_L
						
						if (state = 0)
						{
							state = 2;
						}
						else state--
						new1 = 0;
						delay = 0
					}
				}
			}
		}
	}


	//going right
	if (sprite_index = spr_newpausescrn1_normal) && (R1) && (global.pause_logbook = 0) && (delay = 1)
	&& (room != rm_load) //no switching when in title screen
	{
		image_index = 0;
		sprite_index = spr_newpausescrn1_normal_R
		
		if (state = 2)
		{
			state = 0;
		}
		else state++
		new1 = 0;
		delay = 0
	}


	if (instance_exists(obj_textblock_controls_generic))
	{
		with(obj_textblock_controls_generic)
		{
			if (delay = 1) && (selected = 1) && (waiting3 = 0)
			&& (room != rm_load) //no switching when in title screen
			{
				with(other)
				{
					if (sprite_index = spr_newpausescrn1_normal) && (R1) && (global.pause_logbook = 0)
					{
						image_index = 0;
						sprite_index = spr_newpausescrn1_normal_R
						
						if (state = 2)
						{
							state = 0;
						}
						else state++
						new1 = 0;
						delay = 0
					}
				}
			}
		}
	}
}


//go back to normal (not in title screen)
if ((sprite_index = spr_newpausescrn1_normal_R) or (sprite_index = spr_newpausescrn1_normal_L)) && (image_index >= image_number-1)
&& (room != rm_load) //no switching when in title screen
{
	sprite_index = spr_newpausescrn1_normal;	
}