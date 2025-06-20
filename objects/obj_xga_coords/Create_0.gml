/// @description Insert description here
// You can write your code in this editor
difference_x = 0
difference_y = 0
snd_choose1 = 0

footstep_volume = 0
footstep_total = round(random_range(0,4))
footstep_alternator = 0;
footstep_timer = 0;
cancel_footsteps = 0;

doortype = 0
doortype1 = 0

timer_xga = 0

if (instance_number(obj_mapchecker2) > 1) //so we don't spawn xga in 1x1 rooms as that's too unfair
{
	spawn_xga_at_door = round(random_range(0,5));
}
else spawn_xga_at_door = 1;
//spawn_xga_at_door = 0


//snd random choose
snd_choose1 = round(random_range(0,1))

snd_choose2_pitch = (1 + random_range(-0.3,0.3))
snd_choose2 = round(random_range(0,8))
snd_choose2_timer = random_range(0,100)

snd_var = 0;

//spawning xga midway into room instead of at door
roomHowBigTotal = 0;
roomStartX = 0;
roomStartY = 0;
roomHowBigX = 0;
roomHowBigY = 0;
preSpawnX = 0;
preSpawnY = 0;
roomXGASpawnX = 0;
roomXGASpawnY = 0;

xgaFacingChoice = 0;
while (xgaFacingChoice == 0)
{
	xgaFacingChoice = round(random_range(-1,1));
}

//fail safe switch to break while loop if xga spawn is always impossible
xgaStopSpawning = 0;

testbobby = 0