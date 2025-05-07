function Obox_fall() {
	if (vspd < 8)
	{
		vspd += 0.5
	}

	if (place_meeting(x,y+(vspd),obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block)) && (vspd > 0)
	{
		while (place_meeting(x,y+(vspd),obj_block)) && (!place_meeting(x,y+sign(vspd),obj_block))
			{
				y += sign(vspd);
			}
		
		if (place_meeting(x,y+1,obj_block))
		{
			vspd = 0
			spintimer = 1
			audio_play_sound(snd_metalcrash1,1000,false,global.sfx_volume)
			State_machine_switch_state(Obox_rise)
			exit
		}
	}

	y += vspd


}
