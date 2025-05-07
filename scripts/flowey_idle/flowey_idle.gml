function flowey_idle() {

	if (sprite_index = spr_flowey_idle) && (!collision_circle(x,y,90,obj_player,false,true)) && (shoottimer >= 1)
	{
		 sprite_index = spr_flowey_shoot;
		 image_index = 0;
		 shoottimer = 0
		 attack4timer = 0
		 piercetimer = 0
		 vinetimer = 0
		 dist = 0
		 State_machine_switch_state(flowey_shoot)
	}
	else if (sprite_index = spr_flowey_idle) && (vinetimer >= 1)
	{
		 sprite_index = spr_flowey_vine;
		 image_index = 0;
		 vinetimer = 0
		 shoottimer = 0
		 attack4timer = 0
		 piercetimer = 0
		 dist = 0
		 State_machine_switch_state(flowey_vine)
	}
	else if (sprite_index = spr_flowey_idle) && (attack4timer >= 1)
	{
		 sprite_index = spr_flowey_attack4;
		 image_index = 0;
		 attack4timer = 0
		 shoottimer = 0
		 vinetimer = 0
		 dist = 0
		 piercetimer = 0
		 State_machine_switch_state(flowey_attack4)
	}
	else if (sprite_index = spr_flowey_idle) && (piercetimer >= 1) && (collision_circle(x,y,50,obj_player,false,true))
	{
		 sprite_index = spr_flowey_pierce;
		 image_index = 0;
		 attack4timer = 0
		 shoottimer = 0
		 vinetimer = 0
		 piercetimer = 0
		 dist = 0
		 State_machine_switch_state(flowey_pierce)
	}

	if (sprite_index = spr_flowey_idle) && (eyetimer >= 1) && (!instance_exists(obj_boss_flowey_eyevine))
	{
		eyetimer = 0
		dist = obj_player.x
		instance_create_depth(dist,464,id.depth-1,obj_boss_flowey_eyevine)
		dist = 0
	}

	shoottimer += random_range(((1/room_speed)/1.5),((1/room_speed)/2.5))
	vinetimer += random_range(((1/room_speed)/1.5),((1/room_speed)/2.5))
	attack4timer += random_range(((1/room_speed)/1.5),((1/room_speed)/2.5))
	eyetimer += random_range(((1/room_speed)/2),((1/room_speed)/3))
	piercetimer += random_range(((1/room_speed)/2),((1/room_speed)/3))




}
