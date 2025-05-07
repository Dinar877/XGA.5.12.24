function Obox_idle() {
	if (collision_line(id.x,id.y,id.x,id.y+180,obj_player,false,true)) && (!place_meeting(x,y,obj_block))
	{
		sprite_index = spr_Obox_rumble
		State_machine_switch_state(Obox_rumble)
	
		with(obj_boss_Greybox_outside)
		{
			dontmove_O = 1	
		}
	
		exit
	}








}
