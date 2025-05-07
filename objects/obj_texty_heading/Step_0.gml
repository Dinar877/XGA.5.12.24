/// @description Insert description here
// You can write your code in this editor
if (alpha < 1)
{
	alpha += spd/10;
}
else alpha = 1;

stringy = string_char_at(text,time+message_pos)
stringy2 = string_char_at(text,time+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (time+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,time+message_pos+time2+1)
	}
}
else time2 = 0;

if (time2 > 0) && ((time+time2 > 46) && (string_positionY <= 0)) && (pauser == 0)
{
	strn = string_copy(text,time+message_pos,time2)
	strn_length = string_length(strn);
	string_positionY ++;
	
	if (instance_number(obj_texty) <= 2) && (!instance_exists(obj_texty_generic))
	{
		spd = 0;
		tex = instance_create_depth(x,y+11,id.depth-5,obj_texty_heading);

		with(tex)
		{
			alpha = 1;
			text = other.text;
			message_pos += other.time + other.message_pos;
			pauser = 0;
			string_positionY = 0;
			time = 0;
			text_length = string_length(text)
		}
	}
	
}

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}






