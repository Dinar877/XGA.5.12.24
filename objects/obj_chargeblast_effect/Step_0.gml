/*

texture_set_interpolation(false);
script_execute(Gamepad_variables);


if (global.shoot = 1) or (global.charging = 1)
{     
image_alpha = 1;
pause = 0;
}


if (image_index >= image_number-1) && (sprite_index != -1)
{
    image_speed = 0; 
    image_alpha = 0;
    image_index = 0;
	instance_destroy();
}

/*
if (global.shoot = 1)
{
    fully_charged = 0;
    started_charging = 0;
}

if (global.beam_spread_available = 0) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
 && (global.beam_shield_available = 0)
{
script_execute(chargeblast_effect_location);
}
else if (global.beam_spread_available = 1) && (global.beam_burn_available = 0) && (global.beam_homing_available = 0)
 && (global.beam_shield_available = 0)
{
script_execute(bullet_spread_chargeblast);	
}
else if (global.beam_burn_available = 1) && (global.beam_homing_available = 0)
 && (global.beam_shield_available = 0)
{
script_execute(bullet_burn_chargeblast);	
}
else if (global.beam_homing_available = 1)
 && (global.beam_shield_available = 0)
{
script_execute(bullet_homing_chargeblast);	
}
else if (global.beam_shield_available = 1)
{
script_execute(bullet_shield_chargeblast);	
}
/* */
/*  */
