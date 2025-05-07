/// @description Insert description here
// You can write your code in this editor
if (image_alpha <= 0)
	{
		image_alpha = 1.0;	
	}
	
if (image_alpha > 0)
	{
		image_alpha -= 0.025;
		timer1 += 0.008;
	}
if (image_alpha <= 0) && (timer1 >= 1)
	{
		with(object_player2_0_sprites)
		{
			image_speed = 1;	
		}
		with(obj_darkeater_sprites)
		{
			image_speed = 1;
			warning = 1;
		}
		global.boss_warning = 0;
		instance_destroy()
	}

