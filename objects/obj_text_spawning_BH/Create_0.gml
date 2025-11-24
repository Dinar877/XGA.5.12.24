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
	if (global.cutsceneID[Cutscenes.blackholetalk1] <= 0)
	{
		newTextAvailable = 3;	
	}
	else if (global.cutsceneID[Cutscenes.blackholetalk1] == 1)
	{
		newTextAvailable = 6; //talk anytime	
	}
}
else if (global.corrupted == 1)
{
	if (global.cutsceneID[Cutscenes.blackholetalk2] <= 0)
	{
		newTextAvailable = 4;	
	}
	else if (global.cutsceneID[Cutscenes.blackholetalk2] == 1)
	{
		newTextAvailable = 7; //talk anytime
	}
}



if (newTextAvailable == 3)
{
	text = " I WAS CREATED FROM BOTH YOUR'S AND XGA'S ENERGY BLASTS. CURRENTLY ACTIVE ABILITIES: ANTI-XGA DETECTION FIELD. CURRENT STORED ITEMS: X-SABER. DISPENSING ITEM...";	
}
else if (newTextAvailable == 4)
{
	text = " ER1OR! 5ERROR! 1SYSTEM DAM>7GE! 99% OF EN1RGY USED F/R ANTI-XGA LIGHTNING S5IELD! N0 ENERGY REMA1101INING F7*R USER ANTI-XGA DETECTION FIEL100110D. R()TURN T0O EACH SEC11OR AND DE1TR0Y THE R1MA1NING BI0WEAP1NS! CAUT01!ION ADVI1ED!!!!!";	//texty object not working here. "(floor(time)+message_pos+time2 < text_length)" is equal to 93 and new line not triggered as a result.. 
}
else if (newTextAvailable == 6)
{
	text = " HURRY! BIOCORP IS COMING SOON!";	
}
else if (newTextAvailable == 7)
{
	if (global.bossblockers[bossblockers.gorilla] == 0)
	{
		text = " ABNOr-23oMaTIE11S DETE110101CTE1D IN SEC?0R 2!!";
	}
	else if (global.bossblockers[bossblockers.gorilla] == 1)
	&& (global.bossblockers[bossblockers.kingstalker] == 0)
	{
		text = " EvEN MORE ABNOr-23oMaTIE11S DETE110101CTE1D IN SEC?0R 2 BEL<W LAVA.";
	}
	else if (global.bossblockers[bossblockers.gorilla] == 1)
	&& (global.bossblockers[bossblockers.kingstalker] == 1)
	&& (global.bossblockers[bossblockers.darklord] == 0)
	{
		text = " ABNOr-23oMaTIE11S DETE110101CTE1D IN SEC?0R 1!";
	}
	else if (global.bossblockers[bossblockers.gorilla] == 1)
	&& (global.bossblockers[bossblockers.kingstalker] == 1)
	&& (global.bossblockers[bossblockers.darklord] == 1)
	&& (global.bossblockers[bossblockers.turtle] == 0)
	{
		text = " ABNOr-23oMaTIE11S DETE110101CTE1D IN SEC?0R 4!";
	}
}