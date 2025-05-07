/// @description Insert description here
// You can write your code in this editor
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

if ((time+message_pos+time2+1  >= text_length) && (stringy == ".")) && (pauser_end == 0)
{
	pauser_end = 1;
}

if (killall <= 0)
{
	if (image_alpha < 1)
	{
		image_alpha+= 0.05
		alpha += 0.05
	}
}
else if (killall > 0)
{
	if (image_alpha > 0)
	{
		image_alpha-= 0.05
		alpha -= 0.05
	}
	else instance_destroy()
}
