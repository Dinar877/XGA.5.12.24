/// @description Insert description here
// You can write your code in this editor
with(obj_NEWsav_standbyeffect)
{
	if (place_meeting(x,y,obj_player))
	{
		with(other)
		{
			if (image_index >= image_number-1) && (image_speed != -1)
			{
				image_speed = 0;
				image_index = image_number-1;
			}
			else if (image_index < image_number-1) && (dontsave = 0)
			{
				image_speed = 1
			}
		}
	}
	else if (!place_meeting(x,y,obj_player))
	{
		with(other)
		{
			if (image_index <= 0) && (image_speed != 1)
			{
				image_speed = 0;
				image_index = 0;
			}
			else if (image_index > 0) && (dontsave = 0)
			{
				image_speed = -1
			}
		}
	}
}