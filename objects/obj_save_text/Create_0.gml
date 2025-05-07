/// @description Insert description here
// You can write your code in this editor
death1 = 0;
death2 = 0;
FadeNow = 0;

spawn = 0;

alpha = 0;
time = 0;
time2 = 0;
spd = 0.5;
pauser = 0;
pauser_end = 0;
string_positionX = 0;
string_positionY = 0;
selected = 1;
death1 = 0;
death2 = 0;
message = "";
message_pos = 0;
message_original = "";
inst = -1;

message = "";
message2 = "";
message3 = "";
messageyes = "YES";
messageno = "NO";
if (!sprite_exists(spr_text_navigational))
{
	//global.font_spr = sprite_add("text1+2.gif",0,false,false,0,0);
	global.font_gray1 = font_add_sprite_ext(spr_text_navigational, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!1234567890':", true, 1);
	draw_set_font(global.font_gray1);
}
else if (sprite_exists(spr_text_navigational))
{
	global.font_gray1 = font_add_sprite_ext(spr_text_navigational, "ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!1234567890':", true, 1);
	draw_set_font(global.font_gray1);
}

text = " "
spd = 0.5;
font = font_regular1;
	
text_length = string_length(text)
font_size = font_get_size(font)
	

	
text_width = string_width_ext(text,font_size+(font_size/2),280);
text_height = string_height_ext(text,font_size+(font_size/2),30);