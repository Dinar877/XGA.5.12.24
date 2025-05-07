/// @description Insert description here
// You can write your code in this editor


if (image_index >= image_number - 1) && (image_speed != 0)
{
	image_speed = 0;
	text = "SKIP INTRO?"
	instance_create_depth(x+50,y+8,id.depth-1,obj_intro_skiptext_yesbox)
	with(obj_intro_skiptext_yesbox)
	{
		text = "YES"	
	}
	instance_create_depth(x+230,y+8,id.depth-1,obj_intro_skiptext_nobox)
	with(obj_intro_skiptext_nobox)
	{
		text = "NO"	
	}
}

if (obj_text_spawning_trueintro_opening.skiptext = 0)
{
	image_speed = -1	
}

if (image_index <= 0) && (image_speed = -1)
{
	image_speed = 0;
	instance_destroy()
}
