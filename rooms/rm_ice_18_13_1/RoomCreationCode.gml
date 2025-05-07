global.doorpath1 = rm_ice_16_13;
global.doorpath2 = rm_ice_19_9_4;
global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1;

/*
if (instance_exists(obj_aud_snow))
{
	with(obj_aud_snow)
	{
		stopsnd	= 1
	}
	global.sector_music = -1
}

if (!instance_exists(obj_aud_preboss))
{
	instance_create(0,0,obj_aud_preboss)
	global.sector_music = obj_aud_preboss
}