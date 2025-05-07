function Obox_rumble() {
	if (energytimer < 1) && (sprite_index == spr_Obox_rumble)
	{
		energytimer	+= 1/90
	}
	else if (energytimer >= 1) && (sprite_index == spr_Obox_rumble)
	{
		energytimer	= 0
		sprite_index = spr_Obox_idle
		vspd = 0
		State_machine_switch_state(Obox_fall)
	}


}
