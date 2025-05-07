function spider_charging() {
	if (inst <= 0)
	{
		inst = instance_create_layer(x,y,layer_get_id("Inst_doors"),obj_chargingeffect_boss)
		with(obj_boss_spider_legs)
		{
			sprite_index = spr_boss_spider_idle;	
		}
		
		
		audio_stop_sound(snd_electricity)
		var sndy1 = audio_play_sound(snd_electricity,1000,false,global.sfx_volume)
		audio_sound_gain(sndy1,0,1300)
	}

	if (obj_player.x > self.x) && (sprite_index = spr_boss_spider_eye_idle_left)
	{
		State_machine_switch_state(spider_turning);
		audio_stop_sound(snd_electricity)
	}
	else if (obj_player.x < self.x) && (sprite_index = spr_boss_spider_eye_idle_right)
	{
		State_machine_switch_state(spider_turning);
		audio_stop_sound(snd_electricity)
	}

	if (obj_boss_spider_hitbox.state == legs_jumping_backingaway_left) or (obj_boss_spider_hitbox.state == legs_jumping_backingaway_right) or (!instance_exists(inst))
	{
		State_machine_switch_state(spider_idle)
		audio_stop_sound(snd_electricity)
		instance_destroy(obj_chargingeffect_boss)
		timer2shoot = 0;
	}


}
