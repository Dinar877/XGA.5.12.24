//Darkeater's ID
BossblockerID = 90;
hp = 350

attack_state = 0
grounded = 0
teleport_timer = 0
pierce_killswitch = 0
pierce_killswitch_timer = 10;

//starting xga state
if (global.darkeater_active == 1)
{
	State_machine_create()
	State_machine_switch_state(darkeater_idle)
	state1 = darkeater_idle
}
else if (global.darkeater_active < 1)
{
	State_machine_create()
	if (room != rm_redtemple_finalboss)
	{
		State_machine_switch_state(darkeater_undetected_idlewalk)
		state1 = darkeater_undetected_idlewalk
	}
}



//destroy xga conditions
if (global.corrupted <= 0) && (room != rm_redtemple_finalboss)
{
	instance_destroy()
	exit
}
else if (room == rm_redtemple_finalboss)
{
	State_machine_switch_state(Freeze)
	state1 = Freeze
	
	warning = 0
}
else warning = 1


//new1 pathfinding stuff
cell_width = 8;
cell_height = 8;

door_height = 20;
doorborder_height = 49;
path_y_start_pos = 0

pathXpos = 0;
pathYpos = 0;
pathXpos_5 = 0;
pathYpos_5 = 0;

pathXpos_0 = 0;
pathYpos_0 = 0;

//to make sure we're not calculating the path every frame of the game, as it'd lag everything toomuch
counter = 0;


if (instance_exists(obj_maptile_drawer2))
{
	hcellsmin = ((obj_maptile_drawer2.x) div cell_width)
	vcellsmin = ((obj_maptile_drawer2.y) div cell_height)
}
else
{
	hcellsmin = 0
	vcellsmin = 0
}

hcellsmax = round(2000 div cell_width)
vcellsmax = round(2000 div cell_height)


hcells = hcellsmax-hcellsmin
vcells = vcellsmax-vcellsmin

//reset pathfinding variable
global.darkeater_pathgeneral = 0

if (global.darkeater_grid > 0)
{
	mp_grid_destroy(global.darkeater_grid)	
}

if (path_exists(global.darkeater_pathadd) > 0)
{
	path_delete(global.darkeater_pathadd)	
}



global.darkeater_grid = mp_grid_create(0,0,hcellsmax,vcellsmax,cell_width,cell_height)
global.darkeater_pathadd = path_add()
doorID = 0
doorID_start = 0

//collision
mp_grid_add_instances(global.darkeater_grid,obj_block,true)
mp_grid_add_instances(global.darkeater_grid,obj_block2,true)
mp_grid_add_instances(global.darkeater_grid,obj_block2_nano,true)
mp_grid_add_instances(global.darkeater_grid,obj_block_door_behind,true)

mp_grid_add_instances(global.darkeater_grid,obj_block2_blocker,true)
mp_grid_add_instances(global.darkeater_grid,obj_block2_blocker1,true)
mp_grid_add_instances(global.darkeater_grid,obj_block2_noclimb,true)
mp_grid_add_instances(global.darkeater_grid,obj_block2_door,true)

mp_grid_add_instances(global.darkeater_grid,obj_block2_flytrap,true)

mp_grid_add_instances(global.darkeater_grid,obj_slope1_left,true)
mp_grid_add_instances(global.darkeater_grid,obj_slope1_right,true)
mp_grid_add_instances(global.darkeater_grid,obj_newslope_left,true)
mp_grid_add_instances(global.darkeater_grid,obj_newslope_right,true)

mp_grid_add_instances(global.darkeater_grid,obj_NEWsav_bottom,true)

//analyze room

if (instance_exists(obj_maptile_drawer2)) && (instance_exists(obj_mapchecker2))
{
	roomHowBigTotal = instance_number(obj_mapchecker2) //total mapsquares in room
	roomStartX = (instance_nearest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).x-1 //nearest mapchecker X //-1 because otherwise the grid counts the door borders at the exact left edge of the room as forbidden
	roomStartY = (instance_nearest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).y //nearest mapchecker Y
	roomHowBigX = (instance_furthest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).x+320+1 //furthest point in room X //+1 because otherwise the grid counts the door borders at the exact right edge of the room as forbidden
	roomHowBigY = (instance_furthest(obj_maptile_drawer2.x, obj_maptile_drawer2.y, obj_mapchecker2)).y+180 //furthest point in room Y
	
	//top of room rectangle
	mp_grid_add_rectangle(global.darkeater_grid, 0, 0, room_width, roomStartY);
	//bottom of room rectangle
	mp_grid_add_rectangle(global.darkeater_grid, 0, roomHowBigY, room_width, room_height);
	//left side room rectangle
	mp_grid_add_rectangle(global.darkeater_grid, 0, 0, roomStartX, room_height);
	//right side room rectangle
	mp_grid_add_rectangle(global.darkeater_grid, roomHowBigX, 0, room_width, room_height);
}




//doorID start
if (instance_exists(obj_door_normal_left)) && (place_meeting(x+13,y,obj_door_normal_left))
	{
		doorID_start = obj_door_normal_left
	}
else if (instance_exists(obj_door_normal_leftAlt)) && (place_meeting(x+13,y,obj_door_normal_leftAlt))
	{
		doorID_start = obj_door_normal_leftAlt
	}
else if (instance_exists(obj_door_normal_left_more)) && (place_meeting(x+13,y,obj_door_normal_left_more))
	{
		doorID_start = obj_door_normal_left_more
	}
else if (instance_exists(obj_door_normal_right)) && (place_meeting(x-13,y,obj_door_normal_right))
	{
		doorID_start = obj_door_normal_right
	}
else if (instance_exists(obj_door_normal_rightAlt)) && (place_meeting(x-13,y,obj_door_normal_rightAlt))
	{
		doorID_start = obj_door_normal_rightAlt
	}
else if (instance_exists(obj_door_normal_right_more)) && (place_meeting(x-13,y,obj_door_normal_right_more))
	{
		doorID_start = obj_door_normal_right_more
	}
else if (instance_exists(obj_door_border_left)) && (place_meeting(x,y,obj_door_border_left)) //////////////////////////////////////////////////////////////////////////DOORLESS
	{
		doorID_start = obj_door_border_left
	}
else if (instance_exists(obj_door_border_left_2)) && (place_meeting(x,y,obj_door_border_left_2))
	{
		doorID_start = obj_door_border_left_2
	}
else if (instance_exists(obj_door_border_left_more)) && (place_meeting(x,y,obj_door_border_left_more))
	{
		doorID_start = obj_door_border_left_more
	}
else if (instance_exists(obj_door_border_right)) && (place_meeting(x,y,obj_door_border_right))
	{
		doorID_start = obj_door_border_right
	}
else if (instance_exists(obj_door_border_right_2)) && (place_meeting(x,y,obj_door_border_right_2))
	{
		doorID_start = obj_door_border_right_2
	}
else if (instance_exists(obj_door_border_right_more)) && (place_meeting(x,y,obj_door_border_right_more))
	{
		doorID_start = obj_door_border_right_more
	}
	
	
	
//xga sprites
instance_create_depth(id.x,id.y,depth-1,obj_darkeater_sprites)	


//A* pathfinding
if (global.darkeater_active = 1) && (instance_exists(obj_player))
{
	global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_player.x,obj_player.y,true)
	
	if (global.darkeater_pathgeneral > 0)
	{
		//get our next points
		pathXpos = (path_get_point_x(global.darkeater_pathadd,1))
		pathYpos = (path_get_point_y(global.darkeater_pathadd,1))
		
		if (pathXpos > floor(x))
		{
			facing = 1;
			
			with(obj_darkeater_sprites)
			{
				facing = 1;
				sprite_index = spr_darkeater_idle_right
			}
		}
		else if (pathXpos < floor(x))
		{
			facing = -1;
			
			with(obj_darkeater_sprites)
			{
				facing = -1;
				sprite_index = spr_darkeater_idle_left
			}
		}
	}
}
else if (global.darkeater_active = 0)
{
	
	//get target destination
	if (instance_exists(obj_door_normal_left)) && (!place_meeting(x+10,y,obj_door_normal_left))
	{
		doorID = obj_door_normal_left
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left.x,obj_door_normal_left.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_leftAlt)) && (!place_meeting(x+10,y,obj_door_normal_leftAlt))
	{
		doorID = obj_door_normal_leftAlt
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_leftAlt.x,obj_door_normal_leftAlt.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_left_more)) && (!place_meeting(x+10,y,obj_door_normal_left_more))
	{
		doorID = obj_door_normal_left_more
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_left_more.x,obj_door_normal_left_more.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_right)) && (!place_meeting(x-10,y,obj_door_normal_right))
	{
		doorID = obj_door_normal_right
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right.x,obj_door_normal_right.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_rightAlt)) && (!place_meeting(x-10,y,obj_door_normal_rightAlt))
	{
		doorID = obj_door_normal_rightAlt
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_rightAlt.x,obj_door_normal_rightAlt.y+door_height,true)
	}
	else if (instance_exists(obj_door_normal_right_more)) && (!place_meeting(x-10,y,obj_door_normal_right_more))
	{
		doorID = obj_door_normal_right_more
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_normal_right_more.x,obj_door_normal_right_more.y+door_height,true)
	}
	else if (instance_exists(obj_door_border_left)) && (!place_meeting(x,y,obj_door_border_left))///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////DOORLESS
	{
		doorID = obj_door_border_left
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left.x,obj_door_border_left.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_left_2)) && (!place_meeting(x,y,obj_door_border_left_2))
	{
		doorID = obj_door_border_left_2
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_2.x,obj_door_border_left_2.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_left_more)) && (!place_meeting(x,y,obj_door_border_left_more))
	{
		doorID = obj_door_border_left_more
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_left_more.x,obj_door_border_left_more.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right)) && (!place_meeting(x,y,obj_door_border_right))
	{
		doorID = obj_door_border_right
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right.x,obj_door_border_right.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right_2)) && (!place_meeting(x,y,obj_door_border_right_2))
	{
		doorID = obj_door_border_right_2
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_2.x,obj_door_border_right_2.y+doorborder_height,true)
	}
	else if (instance_exists(obj_door_border_right_more)) && (!place_meeting(x,y,obj_door_border_right_more))
	{
		doorID = obj_door_border_right_more
		global.darkeater_pathgeneral = mp_grid_path(global.darkeater_grid,global.darkeater_pathadd,x,y,obj_door_border_right_more.x,obj_door_border_right_more.y+doorborder_height,true)
	}
	
	//If a path is impossible, don't spawn
	if (global.darkeater_pathgeneral <= 0) or (doorID == doorID_start)
	{
		instance_destroy()
		
		if (instance_exists(obj_darkeater_sprites))
		{
			instance_destroy(obj_darkeater_sprites)
		}
		
		if (global.darkeater_grid > 0)
		{
			mp_grid_destroy(global.darkeater_grid)	
		}

		if (global.darkeater_pathadd > 0)
		{
			path_delete(global.darkeater_pathadd)	
		}
		
		exit
	}
}

//controls music reseting for xga coords
if (instance_exists(obj_xga_coords))
{
	with(obj_xga_coords)
	{
		xgaMusicSwitch = 1;	
	}
}



//audio shiieeeet
if (!audio_is_playing(ost_xga_chasemusic)) && (!audio_is_playing(snd_xga_heartbeat))
&& (room != rm_redtemple_finalboss)
{
	instance_create_depth(x,y,id.depth+1,obj_sndmaker_xga_hunting)
}






///other variables
player_dir = -1
player_dist = -1
player_dir_notfree = 0;
player_dir_notfreeX = 0;
player_dir_notfreeY = 0;
xadder = 0
yadder = 0
xadder2 = 0
yadder2 = 0


dropdown_left = 0
dropdown_right = 0
turnaround_left = 0
turnaround_right = 0

turnaround_left_both = 0
turnaround_right_both = 0

turnaround_left_air = 0
turnaround_right_air = 0

falldown = 0
falldown_wall = 0
jumpup = 0
jumpup_air = 0
falldown_any = 0
jumpup_any = 0

jumpnow = 0
runnow = 0

xgoal = 0
ygoal = 0
onground = 0

creator = 0;
go = 0;
turning = 0;
hspd = 0;
vspd = 0;
jump_stopper0 = 0
jump_stopper1 = 0
vspdKiller = 0;

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;
timer = 0;
timer2shoot = 1;
inst1created = 0;

statetimer2jump = 0;
statetimer2stamp = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;

knockback = 0;
inactive = 1;
deathanim = 0;






go = 0;
facing = 1;
turning = 0;
hspd = 0;
vspd = 0;

prep_now = 0;
run_now = 0;

spintimer = 0;
shinetimer = 0;
energytimer = 0;



pathYpos2num = 0
pathYpos2 = 0
pathXpos2 = 0

random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;
inst4 = 0;
inst_player = 0;
inst2 = instance_place(x,y,obj_darkeater_hitbox);

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;

idlewalk = 20;
idlewait = 100;
idleend = 0;

timer = 0;
timer2shoot = 1;
inst1created = 0;

statetimer2jump = 0;
statetimer2stamp = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;
if (global.mode_casual == 0)
{
	hp = 40000000;
}
else hp = 30000000;

deathanim = 0;
knockback = 0;
inactive = 1;

xmin1 = x;
xmax1 = xmin1 + (sprite_get_width(sprite_index)/6);
ymin1 = y;
ymax1 = ymin1 + (sprite_get_height(sprite_index)/6);

invincible = 0;
flashwhite_limit = 0;
hurt2 = 0;















input_horizontal = 0;
hangtimer = 0
hang_switch = 0
walljump_timer = 0;
hspd = 0;
hspd_enemy = 0;
hspd_reducer = 0;
hspd_original = 0
vspd = 0;
speed_x = 0;
momentum = 0;
enemy_slowdownswitch = 0;
image_speed_stop = 0;
state1 = 0;

against_wall = 0;
against_wall_du = 0;
jump = 0;
jump_held = 0;
jump_stopper1 = 0;
grav = 0;
falling = 0;

move_prep = 0;

gal = 0;
limit = 0;
drain = 0;
timer = 1;
flashwhite_limit = 1;
hurt1 = 0;
adder = 0;
collision = 1;
wait1 = 0;

minidash = 0;
dash2timer = 0;
getup = 0;
hit = 0;
inst3 = 0;
inst5 = 0;

counter = 0;
shoot_timer = 0;
stopper_bullet_creation = 0;
stopper_dashing_afterimages = 0;

started_invisible = 0;
started_nanoshield = 0;

room_transition_stopper1 = 0;
lefty = 0;
righty = 0;

timer_death = 50;
timer_dashing_hspd = 0;





//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

AimDown = 0
AimtrueUp = 0
AimUp = 0

L1 = 0
R1 = 0
L2 = 0
R2 = 0


//AUDIO STUFF
global.inst_audio_N++;
inst_n = global.inst_audio_N
global.inst_audio_emitterID[inst_n] = audio_emitter_create()
dist = -1;
emitter_start = 0
emitter_pitch = 1;
emitter_vol = 0;
emitterSin = 0
audio_emitter_pitch(global.inst_audio_emitterID[inst_n],emitter_pitch)
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol)
sndID = -1;
sndID2 = -1;
sndID3 = -1;
sndID4 = -1;
sndID5 = -1;
stopsnd = 0;

snd = -1
instbullet0 = 0