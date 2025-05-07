function spider_turning() {
	if (sprite_index = spr_boss_spider_eye_idle_left) && (state = spider_turning)
	{
		sprite_index = spr_boss_spider_eye_idle_l2r;	
	}
	else if (sprite_index = spr_boss_spider_eye_idle_l2r) && (image_index >= image_number-1)
	{
		State_machine_switch_state(spider_idle);
		sprite_index = spr_boss_spider_eye_idle_right;
		exit
	}

	if (sprite_index = spr_boss_spider_eye_idle_right) && (state = spider_turning)
	{
		sprite_index = spr_boss_spider_eye_idle_r2l;	
	}
	else if (sprite_index = spr_boss_spider_eye_idle_r2l) && (image_index >= image_number-1)
	{
		State_machine_switch_state(spider_idle);
		sprite_index = spr_boss_spider_eye_idle_left;	
		exit
	}


}
