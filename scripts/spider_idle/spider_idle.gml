function spider_idle() {
	if (obj_player.x > self.x) && (sprite_index = spr_boss_spider_eye_idle_left)
	{
		image_index = 0
		State_machine_switch_state(spider_turning);
		exit
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_boss_spider_eye_idle_right)
	{
		image_index = 0
		State_machine_switch_state(spider_turning);
		exit
	}

	timer2shoot += 0.001;

	if (timer2shoot >= 1)
	{
		if (obj_boss_spider_hitbox.state == legs_idle) or (obj_boss_spider_hitbox.state == legs_walking)
		{
			if (obj_player.x > self.x)
			{
				sprite_index = spr_boss_spider_eye_idle_right
			}
			else if (obj_player.x < self.x)
			{
				sprite_index = spr_boss_spider_eye_idle_left
			}
		
			State_machine_switch_state(spider_charging)
		}
	}


}
