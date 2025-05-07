limit2 = 0;
fully_charged = 0;
pause = 0;
timer_charging = 0;
started_charging = 0;
image_index = 0;
image_alpha = 0;
image_speed = 0;
gamepad_counter = 0;
correct_slot = 0;
gamepad_counter2 = 0;

charge_stopper = 0
charge_time = 2




/* for later, if I've finished the game development and completed all bosses and the mothership area, and the challenge and bossrush areas
//
partSprite = -1;
pointDirection = -1;

if (global.beam_spread_available <= 0) && (global.beam_burn_available <= 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	partSprite = spr_charging_particle1
}
else if (global.beam_spread_available > 0) && (global.beam_burn_available <= 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	partSprite = spr_charging_particle1_spread
}
else if (global.beam_burn_available > 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	partSprite = spr_charging_particle1_burn
}
else if (global.beam_homing_available > 0) && (global.beam_shield_available <= 0)
{
	partSprite = spr_charging_particle1_homing
}
else if (global.beam_shield_available > 0)
{
	partSprite = spr_charging_particle1_shield
}

global.inst_particle_N = 0;
global.inst_particle_system[0] = part_system_create()

global.inst_particle_emitterID[0] = part_emitter_create(global.inst_particle_system[0])

global.inst_particle_type[0] = part_type_create()
if (partSprite > -1)
{
	part_type_sprite(global.inst_particle_type[0], partSprite, false, false, false);
	part_type_speed(global.inst_particle_type[0], 5, 10, 0.01, 0.01)
	
	part_system_depth(global.inst_particle_system[0], depth+1);
}
*/




//palette swapping stuff
current_pal=0;
my_pal_sprite=spr_palete_normalshot;
surface_normalshot = -1


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

enter_pressed = 0