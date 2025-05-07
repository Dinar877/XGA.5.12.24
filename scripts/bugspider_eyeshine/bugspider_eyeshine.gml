function bugspider_eyeshine() {
	if (image_index >= image_number - 1) && (instance_exists(obj_stalactite_bugspidertriggerer_left)) && (instance_exists(obj_stalactite_bugspidertriggerer_right))
	{	
		instance_destroy(obj_stalactite_bugspidertriggerer_left)
		instance_destroy(obj_stalactite_bugspidertriggerer_right)
	}
	else if (image_index >= image_number - 1) && (!instance_exists(obj_stalactite_bugspidertriggerer_left)) && (!instance_exists(obj_stalactite_bugspidertriggerer_right))
	{	
		if (!instance_exists(obj_stalactite_bugspidertriggerer_left)) && (!instance_exists(obj_stalactite_bugspidertriggerer_right))
		{
			instance_create(x,bbox_top-30,obj_stalactite_bugspidertriggerer_left)
			instance_create(x,bbox_top-30,obj_stalactite_bugspidertriggerer_right)
		}
		sprite_index = spr_boss_bugspider_walkleft;
		image_index = 0;
		State_machine_switch_state(bugspider_walking);
	}


}
