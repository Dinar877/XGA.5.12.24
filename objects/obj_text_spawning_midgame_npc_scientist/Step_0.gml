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
			global.cutscene_suit = 1;
			global.corrupted = 1;
			global.midgame = 1;
			global.cutscene = 1;
			
			//create cutscene props
			instance_create_layer(obj_camera.x-160,obj_camera.y-90,layer_get_id("Inst_healthui_mapborder"),obj_midgame_xga_jumpscare);
	
			//audio_play_sound(snd_beamexplosion2,1000,false,global.sfx_volume)
	
			new1 = 2
			
			if (instance_exists(obj_midgame_npc_scientist))
			{
				instance_destroy(obj_midgame_npc_scientist)
			}
			if instance_exists(obj_player)
			{
				instance_destroy(obj_player)
			}
			if instance_exists(object_player2_0_sprites)
			{
				instance_destroy(object_player2_0_sprites)
			}
			
	
			instance_destroy()
	
			exit
}