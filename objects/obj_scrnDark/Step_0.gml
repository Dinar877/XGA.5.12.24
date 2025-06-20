/// @description Insert description here
// You can write your code in this editor

//go to room1 when loading game
if (endload == 0) && (saving = 0) && (endsaving == 0) && (global.dead_ending == 0) && (global.pierce_killswitch == 0)
&& (goToRoom <= 0)
{
	if (image_alpha < 0.4) && (global.loading == 0)
	{
		image_alpha += 0.03;	
	}

	if (global.loading = 1) && (image_alpha < 1.0)
	{
		image_alpha += 0.05;	
	}
	else if (global.loading = 1) && (image_alpha >= 1.0)
	{
		with(obj_load_text_yes)
		{
			instance_activate_all();
			room_goto(room1);	
		}
	}
}

//for changing to any room once totally black
if (changerooms = 1) && (room1 > 0)
{
	if (image_alpha < 1.0)
	{
		image_alpha += 0.005;	
	}
	else if (image_alpha >= 1.0)
	{
		instance_activate_all();
		room_goto(room1);	
		instance_destroy();
	}
}

//if goToOptions is set
if (endload == 0) && (saving = 0) && (endsaving == 0) && (global.dead_ending == 0) && (global.pierce_killswitch == 0)
&& (goToOptions == 1)
{
	if (image_alpha < 1.0)
	{
		image_alpha += 0.05;	
	}
	else if (image_alpha >= 1.0)
	{
		goToOptions = 2;
	}
}
//leaving options
if (endload == 0) && (saving = 0) && (endsaving == 0) && (global.dead_ending == 0) && (global.pierce_killswitch == 0)
&& (goToOptions == 3)
{
	if (image_alpha > 0.0)
	{
		image_alpha += 0.05;	
	}
	else if (image_alpha <= 0.0)
	{
		goToOptions = 0;
	}
}

//for saving and ending saving
if (saving == 1) && (image_alpha == 0) && (global.dead_ending == 0)
{
	image_alpha = 0.6;
}
if (endsaving == 1) && (image_alpha > 0) && (global.dead_ending == 0)
{
	image_alpha -= 0.05;
}

//xga stab playing fade to black
if (global.pierce_killswitch == 1)
{
	if (image_alpha < 1)
	{
		image_alpha += (1/(60*10));
	}
	else
	{
		if (instance_exists(obj_darkeater_hitbox))
		{
			obj_darkeater_hitbox.pierce_killswitch_timer = -1;
			instance_destroy();		
		}
	}
}



//endload, endsaving or dying
if ((endload3 == 1) or (endsaving == 1)) && (global.pierce_killswitch == 0) && (image_alpha <= 0) or (global.dead_ending == 1)
{
	instance_destroy();
}

