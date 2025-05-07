/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (timer11 <= 1)
{
	timer11 += (1/room_speed)/3	
}

if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (jump)
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			spd = 0.5	
		}
	}
}

if (instance_exists(obj_texty_intro_xga))
{
	if (jump)
	{
		with(obj_texty_intro_xga)
		{
			time = floor(time)
			spd = 1
		}
	}
	else if (!jump)
	{
		with(obj_texty_intro_xga)
		{
			spd = 0.5	
		}
	}
}

//new = 0
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 0)
{
	global.xleft = 0
	global.yup = 0
	text = " XGA, the ultimate bioweapon, has finally been defeated. Now 'BIO-CORP' can no longer use it for enslaving our universe."
	new1 = 1;
	Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
}

//new = 1
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 1)
{
	global.xleft = 0
	global.yup = 0
	text = " It's been hunting me throughout my mission here. Unable to damage it in any way, I was forced to run and hide from it..."
	new1 = 1;
	Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		
}

//new = 2
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 2)
{
	global.xleft = 0
	global.yup = 0
	text = " Eventually I grew strong enough to destroy XGA though, and stopped BIO-CORP from using it for enslaving entire galaxies."
	new1 = 1;
	Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		
}

//new = 3
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 3)
{
	global.xleft = 0
	global.yup = 0
	text = " Later, I took control of the space station using the Relic's power, and headed straight for BIO-CORP's home base."
	new1 = 1;
	Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		
}

//new = 4
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 4)
{
	global.xleft = 0
	global.yup = 0
	text = " My purpose in life, has only just begun. I must rid the universe of the dictatorial BIO-CORP, and do what my race could not do. Control the relic's power properly. I will now begin my new mission, to restore freedom and peace to the universe, by wiping out BIO-CORP...permanently."
	new1 = 1;
	Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		
}

//new = 5
if (new1 == 0) && (timer11 >= 1) && (new_cutscene = 5)
{
	global.xleft = 0
	global.yup = 0
	text = " "
	
	new_cutscene = 6
	timer11 = 0
}

//new = 6 - go back to title screen
if (new_cutscene = 6) && (enter_pressed)
&& (timer11 >= 1)
{	
	audio_stop_sound(ost_facingahugereaction)
	
	instance_activate_all()
	
	
	if (instance_exists(obj_endgame_cutsceneplayer))
	{
		instance_destroy(obj_endgame_cutsceneplayer)	
	}
	
	if (instance_exists(obj_intro_cutscene_overlay))
	{
		instance_destroy(obj_intro_cutscene_overlay)	
	}
	
	if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
	{
		instance_destroy(obj_texty_TRUEgeneric_nonmarker)	
	}
	
	if (instance_exists(obj_text_spawning_arrow))
	{
		instance_destroy(obj_text_spawning_arrow)	
	}
	
	if (instance_exists(obj_boss_deathscreennuke))
	{
		instance_destroy(obj_boss_deathscreennuke)	
	}
	
	if (instance_exists(obj_scrnDark_endgame))
	{
		instance_destroy(obj_scrnDark_endgame)	
	}
	
	instance_destroy()
	
	
	room_goto(rm_titleintro_1)
}


