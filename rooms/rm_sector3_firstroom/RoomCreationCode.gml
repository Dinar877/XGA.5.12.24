global.mapgrid_1x1 = 1
global.mapgrid_xZeroMove = 1
global.mapgrid_yZeroMove = 1

if (global.corrupted <= 0)
{
	global.doorpath1 = rm_S3_23_22
}
else if (global.corrupted > 0)
{
	global.doorpath1 = rm_S3_23_22_cor
}

global.doorpath2 = rm_fire_NEWsave_LR