/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

var menu_move = down_key_pressed-up_key_pressed;
if (gamepad4_wait < 1)
{
	gamepad4_wait += 0.05
}

if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < instance_number(obj_NEWmenu_yellowblock))
&& (menu_move != 0) && (!gamepad_is_connected(correct_slot))
{
	menu_index_item += menu_move
}
else if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < instance_number(obj_NEWmenu_yellowblock))
&& (menu_move != 0) && (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
{
	menu_index_item += menu_move
	gamepad4_wait = 0
}





//killall
if (killall > 0) && (instance_exists(obj_NEWmenu_blueblock))
{
	with(obj_NEWmenu_blueblock)
	{
		image_alpha -= 0.05
		killall = 1
	}
	with(obj_NEWmenu_yellowblock)
	{
		image_alpha -= 0.05
		killall = 1
	}
}
else if (killall > 0) && (!instance_exists(obj_NEWmenu_blueblock))
{
	spawn = 0
	killall = 0
}

//menu_index_heading == -1-title
#region
if (menu_index_heading == -1)
{
	instance_create_depth(212,60,id.depth-1,obj_bg_title1);
	instance_create_depth(212,98,id.depth-1,obj_bg_title2);
	instance_destroy()
}
#endregion

//menu_index_heading == 0
#region
if (menu_index_item = 0) && (menu_index_heading = 0)
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3))
	{
		with(tex_orange1)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
		with(tex_orange3)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 1) && (menu_index_heading = 0)
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3))
	{
		with(tex_orange1)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange2)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange3)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 2) && (menu_index_heading = 0)
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3))
	{
		with(tex_orange1)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange3)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
	}
}

if (menu_index_heading == 0) && (spawn = 0) && (!instance_exists(obj_NEWmenu_blueblock))
{
	spawn = 1
	tex = instance_create_depth(x,y,id.depth-1,obj_NEWmenu_blueblock);
	menu_index_offpath = 0

	//select options
	with(tex)
	{
		text = "SELECT OPTION";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	
	//play a save file
	tex_orange1 = instance_create_depth(x,y+42,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange1)
	{
		is_savefile = 1
		text = "PLAY";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	
	/*
	tex_orange2 = instance_create_depth(x,y+64,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange2)
	{
		is_options = 1
		
		text = "SCREEN SIZES";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	*/
	
	//options
	tex_orange2 = instance_create_depth(x,y+64,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange2)
	{
		is_options = 1
		
		text = "OPTIONS";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	//exit game
	tex_orange3 = instance_create_depth(x,y+86,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange3)
	{
		is_exit = 1
		
		text = "EXIT GAME";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
}
#endregion

//menu_index_heading == 1-save1
#region
if (menu_index_item = 0) && (menu_index_heading = 1) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2))
	{
		with(tex_orange1)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 1) && (menu_index_heading = 1) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2))
	{
		with(tex_orange1)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange2)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
}

//select whether to load save file or begin new game
if (menu_index_heading == 1) && (spawn = 0) && (!instance_exists(obj_NEWmenu_blueblock)) && (file_exists("XGA.SAVEFILE.dat")) && (menu_index_offpath == 0)
{
	spawn = 1
	tex = instance_create_depth(x,y,id.depth-1,obj_NEWmenu_blueblock);

	with(tex)
	{
		text = "LOAD LATEST SAVE FILE?";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange1 = instance_create_depth(x,y+42,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange1)
	{
		is_load_yes = 1
		
		text = "YES";
		spd = 0.5;
		font = font_regular1;
		
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange2 = instance_create_depth(x,y+64,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange2)
	{
		is_load_no = 1
		
		text = "NO";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
}
else if (menu_index_heading == 1) && (spawn = 0) && (!instance_exists(obj_NEWmenu_blueblock)) && (!file_exists("XGA.SAVEFILE.dat")) && (menu_index_offpath == 0) //if no save file detected
{
	menu_index_heading = 2
}
#endregion

//menu_index_heading == 2-save2
#region
if (menu_index_item = 0) && (menu_index_heading = 2) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1))
	{
		with(tex_orange1)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
	if (instance_exists(tex_orange2))
	{
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange3))
	{
		with(tex_orange3)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange4))
	{
		with(tex_orange4)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 1) && (menu_index_heading = 2) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1))
	{
		with(tex_orange1)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange2))
	{
		with(tex_orange2)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
	if (instance_exists(tex_orange3))
	{
		with(tex_orange3)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange4))
	{
		with(tex_orange4)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 2) && (menu_index_heading = 2) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1))
	{
		with(tex_orange1)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange2))
	{
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange3))
	{
		with(tex_orange3)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
	if (instance_exists(tex_orange4))
	{
		with(tex_orange4)
		{
			selected = 0
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 3) && (menu_index_heading = 2) && (menu_index_offpath == 0)
{
	if (instance_exists(tex_orange1))
	{
		with(tex_orange1)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange2))
	{
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange3))
	{
		with(tex_orange3)
		{
			selected = 0
			FadeNow = 0
		}
	}
	if (instance_exists(tex_orange4))
	{
		with(tex_orange4)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
}


if (menu_index_heading == 2) && (spawn = 0) && (!instance_exists(obj_NEWmenu_blueblock)) && (menu_index_offpath == 0)
{
	spawn = 1
	tex = instance_create_depth(x,y,id.depth-1,obj_NEWmenu_blueblock);

	with(tex)
	{
		text = "START A NEW GAME?";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange1 = instance_create_depth(x,y+42,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange1)
	{
		is_casual = 1
		text = "YES";
		spd = 0.5;
		font = font_regular1;
		
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange2 = instance_create_depth(x,y+64,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange2)
	{
		is_test = 1
		text = "NO";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	/*
	tex_orange3 = instance_create_depth(x,y+86,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange3)
	{
		is_test2 = 1
		text = "DEV TESTING Cor.";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}

	*/
		
	
	menu_index_item = 0
}
#endregion

//menu_index_heading == 1-options1
#region
if (menu_index_item = 0) && (menu_index_heading = 1) && (menu_index_offpath == 1) //options menu
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3)) && (instance_exists(tex_orange4))
	{
		with(tex_orange1)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
		with(tex_orange3)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange4)
		{
			selected = 0	
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 1) && (menu_index_heading = 1) && (menu_index_offpath == 1) //options menu
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3)) && (instance_exists(tex_orange4))
	{
		with(tex_orange1)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange2)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange3)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange4)
		{
			selected = 0	
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 2) && (menu_index_heading = 1) && (menu_index_offpath == 1) //options menu movement
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3)) && (instance_exists(tex_orange4))
	{
		with(tex_orange1)
		{
			selected = 0
			FadeNow = 0
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
		with(tex_orange3)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
		with(tex_orange4)
		{
			selected = 0	
			FadeNow = 0
		}
	}
}
else if (menu_index_item = 3) && (menu_index_heading = 1) && (menu_index_offpath == 1) //options menu movement
{
	if (instance_exists(tex_orange1)) && (instance_exists(tex_orange2)) && (instance_exists(tex_orange3)) && (instance_exists(tex_orange4))
	{
		with(tex_orange1)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange2)
		{
			selected = 0
			FadeNow = 0
		}
		with(tex_orange3)
		{
			selected = 0	
			FadeNow = 0
		}
		with(tex_orange4)
		{
			selected = 1
			if (selected = 1)
			{
				if (FadeNow < other.other_fadelimit)
				{
					FadeNow += other.other_faderate;	
				}
				else if (FadeNow >= other.other_fadelimit)
				{
					FadeNow = 0.0;	
				}
			}
		}
	}
}


//spawn options
if (menu_index_heading == 1) && (spawn = 0) && (!instance_exists(obj_NEWmenu_blueblock)) && (menu_index_offpath == 1)
{
	spawn = 1;
	
	global.pause_transition = 1;
	
	if (global.mapgrid_1x1 = 1) or ((global.mapgrid_yZeroMove = 1) && (global.mapgrid_xZeroMove = 1))
	{
		instance_create_layer( __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	else if (global.mapgrid_1x1 = 0)
	{
		instance_create_layer(0,0, layer_get_id("Inst_scrn"), obj_scrn_roomtransition);
	}
	
	/*
	tex = instance_create_depth(x,y,id.depth-1,obj_NEWmenu_blueblock);

	with(tex)
	{
		text = "WHICH SCREEN SIZE?";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange1 = instance_create_depth(x,y+42,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange1)
	{
		is_fullscrn = 1
		
		text = "FULL SCREEN";
		spd = 0.5;
		font = font_regular1;
		
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange2 = instance_create_depth(x,y+64,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange2)
	{
		is_1920x1080 = 1
		
		text = "1920x1080";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange3 = instance_create_depth(x,y+86,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange3)
	{
		is_1366x768 = 1
		
		text = "1366x768";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	tex_orange4 = instance_create_depth(x,y+108,id.depth-1,obj_NEWmenu_yellowblock);
	with(tex_orange4)
	{
		is_320x180 = 1
		
		text = "320x180";
		spd = 0.5;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	*/
}
#endregion