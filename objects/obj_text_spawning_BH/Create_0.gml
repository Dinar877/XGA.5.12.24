/// @description Insert description here
// You can write your code in this editor
alpha = 0;
time = 0;
spd = 0.5;
spawnerID = self;
new1 = 0;
new2 = 0;
string_positionX = 0;
string_positionY = 0;
tex = 0;
tex2 = 0;
tex3 = 0;
text = ""

marker_target = obj_maptile_tile_hint;
markerX = 13
markerY = 7

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

//instance_create_depth(x,y+10,self.depth,obj_texty_yes);
//instance_create_depth(x+30,y+10,self.depth,obj_texty_no);

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

//BH
newTextAvailable = 0;

//which text
if (global.corrupted == 0)
{
	if (global.cutsceneID[3] <= 0)
	{
		newTextAvailable = 3;	
	}
	else if (global.cutsceneID[3] == 1)
	{
		newTextAvailable = 6; //talk anytime	
	}
}
else if (global.corrupted == 1)
{
	if (global.cutsceneID[4] <= 0)
	{
		newTextAvailable = 4;	
	}
	else if (global.cutsceneID[4] == 1)
	{
		newTextAvailable = 7; //talk anytime
	}
}



if (newTextAvailable == 3)
{
	text = " I WAS CREATED FROM BOTH YOUR'S AND XGA'S ENERGY BLASTS. DISPENSING ITEM.";	
}
else if (newTextAvailable == 4)
{
	text = " ERROR. NO ENERGY REMAINING FOR USER ANTI-XGA DETECTION FIELD. CAUTION ADVISED! RETURN T0O EACH SEC11OR AND DE1TR0Y THE R1MA1NING BI0WEAP1NS!";	
}
else if (newTextAvailable == 6)
{
	text = " HURRY! BIOCORP IS COMING SOON!";	
}