function sword_hurtenemycode() {
	var x12 = (obj_player_sword_hitbox.sprite_index)
	
	//first hit
	if (enemy_hurt == 0.9)
	{
			sword_spriteindex = obj_player_sword_hitbox.sprite_index
			hp -= 3
			
			
			with(instance_place(x,y,obj_player_sword_hitbox))
			{
				if (alreadyhit == 0)
				{
					other.enemy_hurt = 0.9
					alreadyhit = 1
				}
			}
		
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
	}
	else if (enemy_hurt < 0.9) && (sword_spriteindex != x12) //additional hits either new different sword attack sprite or enemy_hurt needs to be 0.9
	{
			hp -= 4
			enemy_hurt = 0.9
			
		
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
			instance_create(random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom), obj_explosion_normalhit_chunk);
	}

}
