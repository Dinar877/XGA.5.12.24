/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (instance_exists(obj_texty_generic_shorter))
{
	if (jump)
	{
		with(obj_texty_generic_shorter)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_generic_shorter)
		{
			spd = 0.25	
		}
	}
}

if (new1 == 0)
{
	new1 = 1;
	tex = instance_create_depth(x+10,y-5,id.depth-1,obj_texty_generic_shorter);

	with(tex)
	{
		newTextAvailable = other.newTextAvailable;
		
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
		
		BH = 1;
		
		spd = other.spd;
		spawnerID = other.spawnerID;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	//play sfx
	var sndy = audio_play_sound(snd_bh_talk,1000,false,global.sfx_volume)	
	var snd_choose2_pitch = (1 + random_range(-0.3,0.1))
	audio_sound_pitch(sndy, snd_choose2_pitch)
}