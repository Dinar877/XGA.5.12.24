/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
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
message = "";
message_pos = 0;
message_original = "";
inst = -1;

n = 0;
n2 = 0;
nRedblocker = 0;


stringy2 = 0;
stringy = 0;
strn = 0;
tex = 0;
text_current = 0;
strn_length = 0;
text_length_current = 0;
strn_total = 0;
print = "";


font = font_regular1;
	
text_length = 0
font_size = 0
	
text_width = 0
text_height = 0

surface_font = -1;
surface2_font = -1;
surface3_font = -1;

FadeNow = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");
inst = 0;


//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;


AimDown = 0
AimtrueUp = 0
AimUp = 0

room1 = 0;

alpha = 0;
time = 0;
spd = 0.5;
new1 = 0;
new2 = 0;
string_positionX = 0;
string_positionY = 0;
tex = 0;
tex2 = 0;

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

text = "YES"
spd = 0.5;
font = font_regular1;
	
text_length = string_length(text)
font_size = font_get_size(font)
	
draw_set_font(font);
	
text_width = string_width_ext(text,font_size+(font_size/2),280);
text_height = string_height_ext(text,font_size+(font_size/2),30);