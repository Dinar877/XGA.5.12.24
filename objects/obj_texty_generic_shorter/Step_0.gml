/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

switch2 = 0

//fade in text
if (alpha < 1)
{
	alpha += spd/10;
}
else //when faded in play sfx
{
	alpha = 1;
	
	if (string_positionX < floor(time)) && (!instance_exists(obj_text_spawning_arrow))
	&& (midpause <= 0)
	&& (BH == 0)
	{
		audio_stop_sound(snd_typing)
		audio_play_sound(snd_typing,1000,false,global.sfx_volume)
		string_positionX = time	
	}
}

//current string value, next string value
stringy = string_char_at(text,floor(time)+message_pos);
stringy2 = string_char_at(text,floor(time)+time2+message_pos+1); //can get wrongly updated overtime and cause bugs!

//check if need to put next word on new line (I took out the "+1"s)
if (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2 < text_length) && (time2 == 0) //don't trigger while loop unless time2 starts from 0
{
	while (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2 < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,floor(time)+message_pos+time2+1) //update stringy2 to whatever time2's new increase is.
	}
}
else time2 = 0;

//reset time2 if nowhere near the end of a line
if (floor(time)+time2 < 46)
{
	time2 = 0;	
	stringy2 = string_char_at(text,floor(time)+message_pos+time2+1);
}

//how far along total string are we?
text_amount = (floor(time)+time2+message_pos);

//pause text at certain points (-1 because we want the text to pause on the "."s, ","s and "!"s, not the empty string space afterwards)
if ((string_char_at(text,floor(time)+message_pos-1) == ".") or (string_char_at(text,floor(time)+message_pos-1) == ",") or (string_char_at(text,floor(time)+message_pos-1) == "!"))
&& (floor(time)+message_pos+time2 < text_length) && (midpause <= 0)
{
	midpause = 1;
}
else midpause -= 0.1;

//execute linebreak
if (stringy == "\n") && (switch1 = 0)
&& (floor(time)+message_pos+time2+1 < text_length)
{
	string_positionY += 1;
}


//ERROR- IF 'TIME + TIME2 = 46' AND THE 46TH LETTER IN THE TEXT PORTION IS NOT A BLANK SPACE, THE CODE WILL NOT WORK. currently it only works if 'time + time2 > 46'

//execute new line (I took out the "+1"s)
if (((stringy == " ") && (time2 > 0) && (floor(time)+time2 > 46)) //fullword needs next line
or ((stringy == ".") && (floor(time)+time2 > 46))
or ((stringy == "!") && (floor(time)+time2 > 46))
or (stringy == "\n") //newline function inside text
or ((stringy != " ") && (stringy != ".") && (stringy != ",") && (stringy != "\n") && (floor(time) == 46) && (time2 == 0))) //NEW (27/5/25) - finishing on a letter with 'time + time2 = 46'
&& (switch1 = 0) && (floor(time)+message_pos+time2 <= text_length) //BH issue. When text amount is equal to full message, line break fails.
{
		//if landed on 46th character and we need the next line to go one character forward into an empty space
		if (stringy != " ") && (stringy != ".") && (stringy != ",") && (stringy != "\n") && (floor(time) == 46) && (time2 == 0)
		&& (stringy2 = " ")
		{
			time++;
		}
		
		strn = string_copy(text,time+message_pos,time2);
		strn_length = string_length(strn);
		switch1 = 1
	
		tex = instance_create_depth(id.x,id.y+12,id.depth-5,obj_texty_generic_shorter);

		with(tex)
		{
			alpha = 1;
			text = other.text;
			spd = other.spd
			message_pos += other.time + other.message_pos;
			spawnerID = other.spawnerID
			pauser = 0;
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
					
			//for BH text
			newTextAvailable = other.newTextAvailable;
			BH = other.BH;
		}
		
		spd = 0;
}

//stop new text when at maximum for current line
if (time >= 46) && (pauser == 0) && (stringy != " ")
{
	pauser = 1;
}


//ENTER PRESSED
if (enter_pressed) && (pauser_end == 0)
&& (room != rm_startstation) && (room != rm_opening_x1) && (room != rm_midgame_cutscsne_room)
&& (!instance_exists(obj_introtext_arrowender_destroyallnow))
&& (!instance_exists(obj_text_spawning_arrow))
{
	pauser_end = 1;	
	instance_create_depth(x+278,y+5,id.depth-5,obj_introtext_arrowender_destroyallnow)
}




//Normal Text End (I took out the "+1"s)
if (floor(time)+message_pos >= text_length) && (text_length > 25)
&& (!instance_exists(obj_text_spawning_arrow)) && (!instance_exists(obj_introtext_arrowender_destroyallnow))
&& (room != rm_startstation) && (room != rm_opening_x1) && (room != rm_midgame_cutscsne_room)
{
	if (BH == 0)
	{
		instance_create_depth(x+278,y+5,id.depth-5,obj_text_spawning_arrow)
	}
	else if (BH == 1)
	{
		instance_create_depth(x+120,y+36,id.depth-5,obj_text_spawning_arrow)
	}
}


//midgame cutscene npc (I took out the "+1"s)
if (floor(time)+message_pos >= text_length) && (text_length > 25)
&& (!instance_exists(obj_introtext_arrowender_destroyallnow))
&& (!instance_exists(obj_text_spawning_arrow))
&& (room = rm_midgame_cutscsne_room)
{
	instance_create_depth(x+278,y+5,id.depth-5,obj_introtext_arrowender_destroyallnow)
}




//INTRO (I took out the "+1"s)
if (floor(time)+message_pos >= text_length) && (text_length > 25)
&& (!instance_exists(obj_introtext_arrowender_destroyallnow))
&& (!instance_exists(obj_text_spawning_arrow))
&& (room = rm_startstation)
{
	instance_create_depth(x+278,y+5,id.depth-5,obj_introtext_arrowender_destroyallnow)
}


if (instance_number(obj_texty_generic_upgrade) >= 3) && (room = rm_opening_x1) && (!instance_exists(obj_scrnDark_opening_1_intro))
{
	instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrnDark_opening_1_intro)
}