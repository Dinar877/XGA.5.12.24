global.doorpath1 = rm_testing_NEWsave_LR;
global.doorpath2 = rm_ice_5_3_1;
global.doorpath3 = rm_water_1_3_3;
global.doorpath4 = rm_5_1_5;

global.mapgrid_startroomx = 3;
global.mapgrid_startroomy = 2;
global.mapgrid_totalCheckers = 6

/*
if (!instance_exists(obj_aud_snow)) && (global.corrupted > 0)
{
	instance_create(0,0,obj_aud_snow)
	global.sector_music = obj_aud_snow
}
else if (!instance_exists(obj_aud_sector1)) && (global.corrupted <= 0)
{
	instance_create(0,0,obj_aud_sector1)
	global.sector_music = obj_aud_sector1
}
