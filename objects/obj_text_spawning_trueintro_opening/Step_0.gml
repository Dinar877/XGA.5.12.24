/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
Gamepad_variables()

if (timer < 1)
{
	timer += (1/room_speed)/3	
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

//room trueintro-TEXT
#region

if (instance_exists(obj_camera_intro)) && (room = rm_trueintro_opening_TEXT)
{
	if (new1 == 0) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 0) && (obj_camera_intro.y >= 105)
	{
		global.xleft = 0
		global.yup = 0
		text = " The Zavak were a race of human-like aliens, where the leaders were hellbent on conquest and warfare across the universe. In their lust for power they created the corruption relic, which transformed matter around itself into super powered copies of the originals, and they used this to dominate many planets as they expanded their territory. However, their plan backfired."
		new1 = 1;
		//new_cutscene = 1
		Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		
		Music_loop(ost_intro_remastered,0.184, 129.176)
		
	}
}

if (new1 == 1) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 1) && (!instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (instance_exists(obj_intro_cutsceneplayer))
	{
		if (obj_intro_cutsceneplayer.n = 1)
		{
			global.xleft = 0
			global.yup = 0
			text = " The same relic that had empowered their galactic conquests started turning their own soldiers and machines against them, and into mutated abominations with no minds of their own, other than to kill and spread the corruption given to them. The Zavak were arrogant and saw themselves as gods, so they had never bothered to prepare beforehand for serious threats."
			new1 = 1;
			Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		}
	}
}

if (new1 == 1) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 2) && (!instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (instance_exists(obj_intro_cutsceneplayer))
	{
		if (obj_intro_cutsceneplayer.n = 2)
		{
			global.xleft = 0
			global.yup = 0
			text = " Hundreds of years passed. BIO-CORP, a bio weapons private military company, found the relic and began trying to use its powers for themselves. They managed to use a spare cyborg they were developing to draw out the corruption from the relic into it."
			new1 = 1;
			Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		}
	}
}

if (new1 == 1) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 3) && (!instance_exists(obj_texty_TRUEgeneric_nonmarker))
&& (!instance_exists(obj_scrnDark_trueintro_opening_intro))
{
	if (instance_exists(obj_intro_cutsceneplayer))
	{
		if (obj_intro_cutsceneplayer.n = 3)
		{
			global.xleft = 0
			global.yup = 0
			text = " Today we have started researching and studying the cyborg we used to see if anything changes or develops from the corruption, keeping a close eye on the original relic, and additionally developing our own bio weapons using the corruption."
			new1 = 1;
			Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		}
	}
}


//UNUSED FOR NOW
/*
if (new1 == 1) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 3) && (!instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (instance_exists(obj_intro_cutsceneplayer))
	{
		if (obj_intro_cutsceneplayer.n = 2)
		{
			global.xleft = 0
			global.yup = 0
			text = " Close to defeat, the Zavak launched their most powerful atomic and black-hole eruption bombs onto the relic to try and destroy it. It was assumed everything in their galaxy, including them, died."
			new1 = 1;
			Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		}
	}
}

if (new1 == 1) && (room = rm_trueintro_opening_TEXT) && (timer >= 1) && (new_cutscene = 4) && (!instance_exists(obj_texty_TRUEgeneric_nonmarker))
{
	if (instance_exists(obj_intro_cutsceneplayer))
	{
		if (obj_intro_cutsceneplayer.n = 3)
		{
			global.xleft = 0
			global.yup = 0
			text = " However the explosions did not destroy the relic after all, it couldn't be harmed by matter or rips in space-time. Nothing could effect it."
			new1 = 1;
			Text_generic1(text,spd,self,obj_texty_TRUEgeneric_nonmarker)
		}
	}
}
*/
#endregion

//room trueintro-XGA
if (new1 == 0) && (room = rm_trueintro_opening_xga)
{
	global.xleft = 0
	global.yup = 0
	audio_stop_sound(ost_ciri_TheMission)
	text = " Name: Mark Richard Taylor. \n Date: 3/7/XX-17. \n Specimen: XGA. \n Price: 45 Trillion Credits. \n Development: In progress. \n\n Notes: Just 11 more days until my contract is done, and I can return back home. \n It feels weird thinking about how close that date is now, since so much time here has passed. 2 whole years.....if I knew I'd become this lonely and isolated working here, I'd never have signed up for this, even though the pay has been good. \n In fact, to be honest, I've grown completely sick of this place, and its cameras watching us...always. \n Anyways, I should probably write something about the actual project I've been working on, though I've become so desensitized to working on it, I often forget how dangerous this thing will be once it's completed! \n Not to mention that recently, when any of us have been getting close to it to study and test it, XGA becomes violent and starts trying to break out! \n Additionally, orders have tasked us to make another bioweapon, using some dead alien remains rebuilt into an android? I don't know.... Though they also keep telling us that if it wanders too close to the XGA container, we must shut it down immediately! \n I can't wait to get off here! This station is one of these 'top secret' research stations, which means we're not allowed to contact anyone and nobody is told the true details of what we're doing. \n I sure hope my family is ok. I wonder what they're been up to..."
	new1 = 2;
	Text_generic1(text,0.5,self,obj_texty_intro_xga)
}

//end cutscene room 1
if (instance_exists(obj_texty_TRUEgeneric_nonmarker)) && (new1 == 1)
{
	with(obj_texty_TRUEgeneric_nonmarker)
	{
		if (enter_pressed) && (other.skiptext = 0) && (!instance_exists(obj_intro_skiptext_underside))
		{
			other.skiptext = 1
			
			instance_create_depth(obj_camera_intro.x-160,obj_camera_intro.y,id.depth-50000,obj_intro_skiptext_underside)
		}
	}
}

//end cutscene room 2
if (instance_exists(obj_texty_intro_xga)) && (new1 == 2)
{
	with(obj_texty_intro_xga)
	{
		if (enter_pressed) && (other.skiptext = 0) && (other.new1 == 2) && (!instance_exists(obj_intro_skiptext_underside))
		{
			other.skiptext = 1
			instance_create_depth(obj_camera_intro.x-160,obj_camera_intro.y,id.depth-50000,obj_intro_skiptext_underside)
			spd = 0
		}
	}
}

if (skiptext = 1)
{
	if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			spd = 0
		}
	}
	
	if (instance_exists(obj_texty_intro_xga))
	{
		with(obj_texty_intro_xga)
		{
			spd = 0
		}
	}
}
