/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_scrnDark))
{
image_alpha += 0.015;
image_xscale += 0.2;
image_yscale += 0.2;
}
else if (!instance_exists(obj_scrnDark))
{
	image_alpha -= 0.1;
}

if (image_xscale >= 14.0) && (instance_exists(obj_scrnDark))
{
	instance_destroy(obj_scrnDark);
	var inst = instance_create_layer(0,0,layer_get_id("Inst_healthui"),obj_maptile_tile)
	with(inst)
		{
			sprite_index = spr_hint_tile;
			tileposx = 15;
			tileposy = 11;
			gotsprite = 1;
			discovered = 1;
			global.tiledata[global.tiledataN+1] = global.tiledataN+1;
			global.tilesprite[global.tiledataN+1] = sprite_index;
			global.tilex[global.tiledataN+1] = floor(tileposx);
			global.tiley[global.tiledataN+1] = floor(tileposy);
			global.tiledataN += 1;
		}	
	var inst3 = instance_create_depth(inst.x+4,inst.y+4,inst.depth,obj_deathscreennuke_maptile)
	with(inst3)
			{
				tileposx = 15;
				tileposy = 11;
			}
}

if (image_alpha <= 0) && (!instance_exists(obj_scrnDark))
{
	global.navigation = 0;
	instance_destroy()	
}