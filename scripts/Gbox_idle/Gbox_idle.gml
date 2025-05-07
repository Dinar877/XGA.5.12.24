function Gbox_idle() {
	if (collision_line(id.x,id.y,id.x,id.y+180,obj_player,false,true))
	{
		sprite_index = spr_Gbox_charge
		image_index = 0
		spintimer = 1
		State_machine_switch_state(Gbox_charge)
	
		with(obj_boss_Greybox_outside)
		{
			dontmove_Gr = 1
		}
	
		exit
	}





}
