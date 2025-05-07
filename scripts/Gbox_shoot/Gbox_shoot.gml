function Gbox_shoot() {
	spintimer -= 1/180

	if (spintimer <= 0)
	{
		instance_destroy(obj_boss_box_thunder)	
		instance_destroy(obj_boss_box_thunder_ground)	
		audio_stop_sound(snd_electricity)
	
		sprite_index = spr_Gbox_idle
	
		State_machine_switch_state(Gbox_idle)
	
		with(obj_boss_Greybox_outside)
		{
			dontmove_Gr = 0	
		}
	}


}
