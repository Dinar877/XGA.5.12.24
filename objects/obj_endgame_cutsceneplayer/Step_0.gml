/// @description Insert description here
// You can write your code in this editor

//change cutscene image
if (n = 0)
{
	sprite_index = spr_endgame_cutscene1	
}
else if (n = 1)
{
	sprite_index = spr_endgame_cutscene2	
}
else if (n = 2)
{
	sprite_index = spr_endgame_cutscene3	
}
else if (n = 3)
{
	sprite_index = spr_endgame_cutscene4	
}
else if (n = 4)
{
	sprite_index = spr_endgame_cutscene5	
}
else if (n = 5)
{
	sprite_index = spr_endgame_cutscene6	
}


//turn blacker or not
if (FadeNow < 1) && (fadeup = 1) 
{ 
	FadeNow += 0.01; 
	
	if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			image_alpha -= 0.01
		}
	}
}
else if (FadeNow >= 1) && (fadeup = 1) 
{ 
	fadeup = 0
	fadedown = 1
	
	if (instance_exists(obj_texty_TRUEgeneric_nonmarker))
	{
		with(obj_texty_TRUEgeneric_nonmarker)
		{
			instance_destroy()
		}
	}
	
	n++
}

if (FadeNow > 0) && (fadedown = 1) 
{ 
	FadeNow -= 0.01; 
}
else if (FadeNow <= 0) && (fadedown = 1) 
{ 
	FadeNow = 0
	fadedown = 0
}

