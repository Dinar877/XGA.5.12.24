/// @description Insert description here
// You can write your code in this editor
if (sectortile != global.sector_active)
{
	exit;
}

//move maptile hint to correct location
x = floor(16+(tileposx*10)-(global.mapgrid_playerx*10))-3;
y = floor(154+(tileposy*10)-(global.mapgrid_playery*10))+3;



/*
if (instance_place(x,y,obj_maptile_tile_hint)) && (gotsprite == 1) && (sectortile = global.sector_active)
{
	with(instance_place(x,y,obj_maptile_tile_hint))
	{
		if (gotsprite > 0)
		&& (tileposx = other.tileposx) && (tileposy = other.tileposy)
		&& (sectortile = other.sectortile)
		&& (instance_place(x,y,obj_maptile_tile_hint))
		&& (sprite_index = other.sprite_index)
		{
			instance_destroy();
			
			if (instance_exists(obj_deathscreennuke_maptile))
			{
				with(obj_deathscreennuke_maptile)
				{
					if (instance_number(obj_deathscreennuke_maptile) > 1)
					{
						instance_destroy()
					}
				}
			}
			
			exit
		}
	}
}
*/

if (gotsprite = 0) && (discovered = 1) 
{
	sprite_index = spr_hint_tile;
	gotsprite = 1;
	discovered = 1;
	global.hinty = 1;
}

if (timerfade = 1) && (FadeNow2 == 0)
{
	FadeNow2 = 1.0;
}

if (FadeNow2 > 0)
{
	FadeNow2 -= 0.025;
}
else if (FadeNow2 < 0)
{
	FadeNow2 = 0;	
}

if (global.mapgrid_playerx = tileposx) && (global.mapgrid_playery = tileposy)
{
	with(obj_deathscreennuke_maptile)
	{
		instance_destroy()
	}
	instance_destroy()
}

////PAUSED CONTROLS FOR MAP
