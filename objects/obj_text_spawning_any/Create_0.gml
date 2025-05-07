/// @description Insert description here
// You can write your code in this editor
alpha = 0;
time = 0;
spd = 0.5;
new1 = 0;
new2 = 0;
string_positionX = 0;
string_positionY = 0;
tex = 0;
tex2 = 0;
tex3 = 0;


markerX = -1
markerY = -1
markerid = -1;
marker_arrow = -1;

message = "";
message2 = "";
message3 = "";
message4 = "";
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

//instance_create_depth(x,y+10,self.depth,obj_texty_yes);
//instance_create_depth(x+30,y+10,self.depth,obj_texty_no);