/// @description Insert description here
// You can write your code in this editor
global.screen_shake = 1

if (instance_exists(obj_camera))
{
	with(obj_camera)
		{
			if (yshake2 <= 0)
			{
				yshake2 = 5;
			}
		}
}

instance_destroy()