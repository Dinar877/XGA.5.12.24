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
			text = " AUDIO";
		}
		
	//audio textblocks	
	#region
	
	global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
	with(global.tex[0+counter])
		{
			text = " MUSIC VOLUME";
			is_audio = 1
			is_music = 1
			selected = 0
			
			var instaudio = instance_create_depth(x+140,y+3,id.depth-1,obj_pause_audiobar);
			with(instaudio)
			{
				is_audio = 1
				is_music = 1
			}
		}
	counter++
	
	global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
	with(global.tex[0+counter])
		{
			text = " SFX VOLUME";
			is_audio = 1
			is_sfx = 1
			selected = 0
			
			var instaudio = instance_create_depth(x+140,y+3,id.depth-1,obj_pause_audiobar);
			with(instaudio)
			{
				is_audio = 1
				is_sfx = 1
			}
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
else if (delay >= 1) && (counter > 1) && (instance_exists(global.tex[n]))
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
		//global.tex[0].selected = 0;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = -1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
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
		//global.tex[0].selected = 0;
		delay = 0;
		
		if (counter > 2)
		{
			goyother = 1;
			moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
			obj_textblock_generic.ynew += moveamount
			obj_textblock_heading.ynew += moveamount
		}
		goyid = global.tex[n];
		
		exit;
	}

}