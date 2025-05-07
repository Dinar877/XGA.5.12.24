/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

if (spawn = 0)
{
	spawn = 1
	
	tex1 = instance_create_depth(x,y,id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " REMAP CONTROLS";
		}
		
	//controls textblocks
	if (gamepad_is_connected(correct_slot))
	{
		#region
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " JUMP";
				selected = 1
				do_space = 1
			
				if (xbox_or_ps = 1)
				{
					new_input_name = " A"
				}
				else if (xbox_or_ps = -1)
				{
					new_input_name = " X"
				}
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_space
				}
				else gp_input_old = gp_face1
			
				Gamepad_xbox_ps()	
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " SHOOT";
				selected = 0
				do_tab = 1
			
				if (xbox_or_ps = 1)
				{
					new_input_name = " X"
				}
				else if (xbox_or_ps = -1)
				{
					new_input_name = " SQUARE"
				}
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_tab
				}
				else gp_input_old = gp_face3
			
				Gamepad_xbox_ps()	
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.sword_available)
				{
					text = " SWORD";
				}
				else text = " SWORD (UPGRADE NEEDED)";
			
				selected = 0
				do_ability = 1
			
				if (xbox_or_ps = 1)
				{
					new_input_name = " B"
				}
				else if (xbox_or_ps = -1)
				{
					new_input_name = " CIRCLE"
				}
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_ability
				}
				else gp_input_old = gp_face2
			
			
				Gamepad_xbox_ps()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.suit_pure > 0)
				{
					text = " DASH";
				}
				else text = " DASH (UPGRADE NEEDED)";
			
				selected = 0
				do_G = 1
			
				if (xbox_or_ps = 1)
				{
					new_input_name = " Y"
				}
				else if (xbox_or_ps = -1)
				{
					new_input_name = " TRIANGLE"
				}
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_G
				}
				else gp_input_old = gp_face4
			
				Gamepad_xbox_ps()	
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " START";
				selected = 0
				do_start = 1
				new_input_name = " START"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_enter
				}
				else gp_input_old = gp_start
			
				Gamepad_xbox_ps()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " SELECT";
				selected = 0
				do_select = 1
				new_input_name = " SELECT"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_select
				}
				else gp_input_old = gp_select
			
				Gamepad_xbox_ps()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " AIM DIAGONALLY DOWN";
				selected = 0
				do_L1 = 1
				new_input_name = " L1"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_L1
				}
				else gp_input_old = gp_shoulderl
			
				Gamepad_xbox_ps()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " AIM DIAGONALLY UP";
				selected = 0
				do_R1 = 1
				new_input_name = " R1"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_R1
				}
				else gp_input_old = gp_shoulderr
			
				Gamepad_xbox_ps()	
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.invisibility_available > 0) or (global.nanoshield_available > 0) or (global.nuclearblast_available > 0) or (global.shockwave_available > 0)
				{
					text = " CYCLE.L";
				}
				else text = " CYCLE.L (UPGRADE NEEDED)";
			
				selected = 0
				do_L2 = 1
				new_input_name = " L2"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_L2
				}
				else gp_input_old = gp_shoulderlb
			
				Gamepad_xbox_ps()
			}
		counter++
	
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.invisibility_available > 0) or (global.nanoshield_available > 0) or (global.nuclearblast_available > 0) or (global.shockwave_available > 0)
				{
					text = " CYCLE.R";
				}
				else text = " CYCLE.R (UPGRADE NEEDED)";
			
			
				selected = 0
				do_R2 = 1
				new_input_name = " R2"
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.gp_R2
				}
				else gp_input_old = gp_shoulderrb
			
				Gamepad_xbox_ps()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " RESET";
				selected = 0
				do_reset = 1
				new_input_name = " ..."
			}
		counter++
		
		//go back
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
			{
				text = " GO BACK";
				lead2goback = 1;
				
				//change sprite
				sprite_index = spr_pause_options_greyblock
			}
		counter++
		
		#endregion
	}
	else if (!gamepad_is_connected(correct_slot))
	{
		#region
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " JUMP";
				selected = 1
				do_space = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_space
				}
				else gp_input_old = ord("Z")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " SHOOT";
				selected = 0
				do_tab = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_tab
				}
				else gp_input_old = ord("X")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.sword_available)
				{
					text = " SWORD";
				}
				else text = " SWORD (UPGRADE NEEDED)";
			
				selected = 0
				do_ability = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_ability
				}
				else gp_input_old = ord("V")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.suit_pure > 0)
				{
					text = " DASH";
				}
				else text = " DASH (UPGRADE NEEDED)";
			
				selected = 0
				do_G = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_G
				}
				else gp_input_old = ord("C")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " START";
				selected = 0
				do_start = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_enter
				}
				else gp_input_old = vk_enter
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " SELECT";
				selected = 0
				do_select = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_select
				}
				else gp_input_old = ord("G")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " AIM DIAGONALLY UP";
				selected = 0
				do_R1 = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_R1
				}
				else gp_input_old = ord("S")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.invisibility_available > 0) or (global.nanoshield_available > 0) or (global.nuclearblast_available > 0) or (global.shockwave_available > 0)
				{
					text = " CYCLE.L";
				}
				else text = " CYCLE.L (UPGRADE NEEDED)";
			
				selected = 0
				do_L2 = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_L2
				}
				else gp_input_old = ord("D")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " AIM DIAGONALLY DOWN";
				selected = 0
				do_L1 = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_L1
				}
				else gp_input_old = ord("A")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				if (global.invisibility_available > 0) or (global.nanoshield_available > 0) or (global.nuclearblast_available > 0) or (global.shockwave_available > 0)
				{
					text = " CYCLE.R";
				}
				else text = " CYCLE.R (UPGRADE NEEDED)";
			
				selected = 0
				do_R2 = 1
			
				if (global.controls_changed > 0)
				{
					gp_input_old = global.key_R2
				}
				else gp_input_old = ord("F")
			
				Gamepad_get_input_space_name_key()
			}
		counter++
	
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_controls_generic);
		with(global.tex[0+counter])
			{
				text = " RESET";
				selected = 0
				do_reset = 1
				new_input_name = " ..."
			}
		counter++
		
		//go back
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
			{
				text = " GO BACK";
				lead2goback = 1;
				
				//change sprite
				sprite_index = spr_pause_options_greyblock
			}
		counter++
		
		#endregion
	}
	
	if (global.tex[0] > 0)
	{
		tex1 = instance_create_depth(x-18,global.tex[0].y,id.depth-1,obj_textselector_arrow_generic);
		with(global.tex[0])
		{
			selected = 1	
		}
	}
}


var menu_move = down_key_pressed-up_key_pressed;
if (gamepad4_wait < 1)
{
	gamepad4_wait += 0.1
}

if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < array_length(global.tex)-1)
&& (menu_move != 0) && (!gamepad_is_connected(correct_slot))
{
	menu_index_item += menu_move
}
else if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < array_length(global.tex)-1)
&& (menu_move != 0) && (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
{
	menu_index_item += menu_move
	gamepad4_wait = 0
}




//menu controlling dogshite

if (delay < 1)
{
	delay += 0.05;
	if (goy > 0)
	{
		obj_textselector_arrow_generic.y = lerp(obj_textselector_arrow_generic.y,goy.y,0.25)
	}
	
	//moves up
	if (goyother > 0)
	{		
		if (goyid > 0)
		{
			with(obj_textblock_controls_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_heading)
			{
				y = lerp(y,y1+ynew,0.25)
			}
		}
	}
	//moves down
	else if (goyother < 0)
	{
		if (goyid > 0)
		{
			with(obj_textblock_controls_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_heading)
			{
				y = lerp(y,y1+ynew,0.25)
			}
		}
	}
}
else if (delay >= 1) && (counter > 1) && (global.pause_logbook = 0) 
&& (instance_exists(global.tex[n])) && (instance_exists(obj_textselector_arrow_generic)) && (instance_exists(obj_textblock_controls_generic)) && (instance_exists(obj_textblock_heading))
{
	goyother = 0;
	//at top
	if (up_key_pressed) && (n = 0) && (n < counter-1)
	{
		n = counter-1;
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		global.tex[0].selected = 0;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = 1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew = moveamount
			obj_textblock_generic.ynew = moveamount
			obj_textblock_heading.ynew = moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}
	else if (down_key_pressed) && (n = 0) && (n < counter-1)
	{
		global.tex[n].selected = 0;
		n++;
		counter_scroll++
		goy = global.tex[n];
		global.tex[n].selected = 1;
		global.tex[0].selected = 0;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = 1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew += moveamount
			obj_textblock_generic.ynew += moveamount
			obj_textblock_heading.ynew += moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}
	
	
	//at bottom
	if (down_key_pressed) && (n == counter-1)
	{
		global.tex[n].selected = 0;
		n = 0;
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[0].selected = 1;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = -1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew = 0
			obj_textblock_generic.ynew = 0
			obj_textblock_heading.ynew = 0
		}
		goyid = global.tex[n];
		
		exit;
	}
	else if (up_key_pressed) && (n == counter-1)
	{
		global.tex[n].selected = 0;
		n--;
		counter_scroll--
		goy = global.tex[n];
		global.tex[n].selected = 1;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = -1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew += moveamount
			obj_textblock_generic.ynew += moveamount
			obj_textblock_heading.ynew += moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}

	//midway screen switch
	if (up_key_pressed) && (n < counter-1) && (n != 0)
	{
		global.tex[n].selected = 0;
		n--
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		
		delay = 0;
		
		if (counter > 2)
		{
			goyother = -1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew += moveamount
			obj_textblock_generic.ynew += moveamount
			obj_textblock_heading.ynew += moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}
	else if (down_key_pressed) && (n < counter-1) && (n != 0)
	{
		global.tex[n].selected = 0;
		n++
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		
		delay = 0;
		
		if (counter > 2)
		{
			goyother = 1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_controls_generic.ynew += moveamount
			obj_textblock_generic.ynew += moveamount
			obj_textblock_heading.ynew += moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}

}