function shelly_shield() {
	if (sprite_index = spr_shelly_shield) && (image_index >= image_number-1)
	{
		sprite_index = spr_shelly_shield_static
	}

	if (sprite_index = spr_shelly_shield_static) && ((global.invisibility != 0) or (inst_player <= 0))
	{
		sprite_index = spr_shelly_shield_reverse
	}

	if (sprite_index = spr_shelly_shield_reverse) && (image_index >= image_number-1) && ((global.invisibility != 0) or (inst_player <= 0))
	{
		sprite_index = spr_shelly_idle
		image_index = 0
		State_machine_switch_state(shelly_idle)
	}
	else if (sprite_index = spr_shelly_shield_reverse) && (image_index < image_number-1) && (global.invisibility == 0) && (inst_player > 0)
	{
		sprite_index = spr_shelly_shield
	}


}
