limit2 = 0;
fully_charged = 0;
pause = 0;
timer_charging = 0;
started_charging = 0;
image_index = 0;
gamepad_counter = 0;
correct_slot = 0;
gamepad_counter2 = 0;

//palette swapping stuff
current_pal=0;
my_pal_sprite=spr_palete_megashot;
surfacemegap = -1

if (global.charging > 0) && (global.beam_spread_available <= 0) && (global.beam_burn_available <= 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	sprite_index = spr_charging_particle1
}
else if (global.charging > 0) && (global.beam_spread_available > 0) && (global.beam_burn_available <= 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	sprite_index = spr_charging_particle1_spread
}
else if (global.charging > 0) && (global.beam_burn_available > 0) && (global.beam_homing_available <= 0) && (global.beam_shield_available <= 0)
{
	sprite_index = spr_charging_particle1_burn
}
else if (global.charging > 0) && (global.beam_homing_available > 0) && (global.beam_shield_available <= 0)
{
	sprite_index = spr_charging_particle1_homing
}
else if (global.charging > 0) && (global.beam_shield_available > 0)
{
	sprite_index = spr_charging_particle1_shield
}

start_x = x;
start_y = y;