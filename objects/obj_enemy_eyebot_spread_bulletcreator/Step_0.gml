/// @description Insert description here
// You can write your code in this editor
var instsprites = instance_place(x,y,obj_enemy_eyebot_spread_sprites)

if (instsprites)
{
	with(instsprites)
	{
		if (sprite_index = spr_eyebot_idle_left)
		{
			with(other)
			{
				x = instsprites.x-7;
				y = instsprites.y-3;
			}
		}
		else if (sprite_index = spr_eyebot_idle_right)
		{
			with(other)
			{
				x = instsprites.x;
				y = instsprites.y-3;
			}
		}
	}
}

if (!instsprites)
{
	instance_destroy();	
}