function shelly_idle() {
	if (global.invisibility = 0) && (inst_player > 0)
		{
			State_machine_switch_state(shelly_shield);
			sprite_index = spr_shelly_shield;
			image_index = 0
		}


}
