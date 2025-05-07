function Obox_rise() {
	if (spintimer > 0)
	{
		spintimer -= 1/60
	}
	else if (spintimer <= 0)
	{
		if (id.y > relativeY)
		{
			y = lerp(y,relativeY-2,0.1)
		}
		else
		{
			State_machine_switch_state(Obox_idle)
			with(obj_boss_Greybox_outside)
			{
				dontmove_O = 0	
			}
		}
	}


}
