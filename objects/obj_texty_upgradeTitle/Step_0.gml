/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test()
Gamepad_variables()

switch2 = 0

if (alpha < 1)
{
	alpha += spd/10;
}
else
{
	alpha = 1;
}

stringy = string_char_at(text,floor(time)+message_pos)
stringy2 = string_char_at(text,floor(time)+time2+message_pos+1)

if (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1 < text_length)
{
	while (stringy == " ") && (stringy2 != " ") && (floor(time)+message_pos+time2+1  < text_length)
	{
		time2++;
		stringy2 = string_char_at(text,floor(time)+message_pos+time2+1)
	}
}
else time2 = 0;
