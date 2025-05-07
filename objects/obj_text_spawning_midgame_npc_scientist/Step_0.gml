/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()


//texty generic shorter-speed up
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
			spd = 0.5	
		}
	}
}
//texty marker-speed up
if (instance_exists(obj_texty_marker))
{
	if (jump)
	{
		with(obj_texty_marker)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_marker)
		{
			spd = 0.5	
		}
	}
}

//cutscene stages
if (new1 == 0)
{
	text = " HELLO AGAIN. THERE ARE STILL BIOWEAPONS REMAINING IN ALL THE SECTORS. YOU WILL NEED TO GO BACK, FIND AND KILL THEM. THERE'S ALSO THAT STRANGE ENTITY HOVERING JUST OUTSIDE THE STATION. I HAVE NO IDEA WHAT IT IS, BUT IT'S BEEN HERE SINCE XGA AWAKENED. DON'T LET YOUR GUARD DOWN. IF YOU JUST KEEP GOING WE MIGHT BOTH MAKE IT OUT OF HERE ALIVE. THERE'S NOT MUCH MOR-.........HOLD ON...WAIT NO-";
	new1 = 1;
	Text_marker(text,spd,self,0,0,-1)
	//irrelevant
	message3 = " MARK TAYLOR";
	Text_readit2_generic(message3,spd);
}
else if (new1 == 1) && (!instance_exists(obj_midgame_flash))
&& (!instance_exists(obj_scrnDark_navigational))
{
			global.pause_player = 1;
			
			instance_create_layer(848,168,layer_get_id("Inst_healthui_mapborder"),obj_midgame_flash)
			instance_create_layer(x,y,layer_get_id("Inst_level_0"),obj_midgame_xga_energycircle)
	
			audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	
			new1 = 2

	
			if (instance_exists(obj_midgame_npc_scientist))
			{
				with(obj_midgame_npc_scientist)
				{
					sprite_index = spr_xga_midgame_eat_scientist
					image_speed = 0
					image_index = 0
			
					y -= 11
				}
			}
	
			instance_destroy()
	
			exit
}