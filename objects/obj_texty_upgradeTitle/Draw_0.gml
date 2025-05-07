/// @description Insert description here
// You can write your code in this editor
draw_set_font(font)	



if (switch1 <= 0)
	{
		if (midpause <= 0) && (switch1 == 0) && (switch_stopper = 0)
		{
			time+=spd;
		}
		else if (switch_stopper = 1) && (floor(time) < text_length)
		{
			time+=spd;
		}
		print = string_copy(text,0+(message_pos),time)
		stringcount = (string_length(print))/2
		draw_set_alpha(image_alpha)
		
		//center text only for when collecting upgrades, not for the pause menu
		if (global.pause = 0) && (global.pause_transition = 0)
		{
			draw_set_halign(fa_center)
		}
		
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_alpha(1)
		
		
		//undo apply the text centering after drawing this text object
		draw_set_halign(fa_left)
	}
	
if (switch1 > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		
		//center text only for when collecting upgrades, not for the pause menu
		if (global.pause = 0) && (global.pause_transition = 0)
		{
			draw_set_halign(fa_center)
		}
		
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		
		//undo apply the text centering after drawing this text object
		draw_set_halign(fa_left)
	}


//spawn arrow for next text line activation
if (pauser > 0)
&& (!instance_exists(obj_text_spawning_arrow)) && (instance_number(obj_texty_generic_upgrade) >= 3) && (!instance_exists(obj_upgrade_arrowend_enterpressed))
&& (((stringy == " ") && (time2 > 0) && (floor(time)+time2 > 46)) or (stringy == "\n"))
&& (pauser_end = 0)
	{
		print = string_copy(text,0+(message_pos),time)
		
		//center text only for when collecting upgrades, not for the pause menu
		if (global.pause = 0) && (global.pause_transition = 0)
		{
			draw_set_halign(fa_center)
		}
		
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		
		if (instance_exists(obj_camera)) && (instance_exists(obj_scrn_roomtransition)) 
		{
			var inst_arrow = instance_create_depth(obj_camera.x+130, obj_camera.y+33, obj_scrn_roomtransition.depth-5, obj_text_spawning_arrow)
			
			with(inst_arrow)
			{
				textyID = other.object_index
				spawnerID = other.spawnerID
				message_pos = other.time
			}
		}
		
		//undo apply the text centering after drawing this text object
		draw_set_halign(fa_left)
		
		//trying to stop the text sfx contuing after finished reading text line
		switch1 = 1
	}

if (pauser > 0) && (instance_exists(obj_text_spawning_arrow))
	{
		print = string_copy(text,0+(message_pos),time)
		
		//center text only for when collecting upgrades, not for the pause menu
		if (global.pause = 0) && (global.pause_transition = 0)
		{
			draw_set_halign(fa_center)
		}
		
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		
		//undo apply the text centering after drawing this text object
		draw_set_halign(fa_left)
	}


	if (pauser_end > 0)
	{
		print = string_copy(text,0+(message_pos),time)
		
		//center text only for when collecting upgrades, not for the pause menu
		if (global.pause = 0) && (global.pause_transition = 0)
		{
			draw_set_halign(fa_center)
		}
		
		draw_set_alpha(image_alpha)
		draw_text_ext_color(x,y,print,11,286,c_white,c_white,c_white,c_white,image_alpha)
		draw_set_alpha(1)
		
		//undo apply the text centering after drawing this text object
		draw_set_halign(fa_left)
	}

