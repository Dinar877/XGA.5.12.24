function enemy_hurt_player_code(argument0) {
	
	//nanoshield
	if (global.nanoshield_ammo > 0) && (global.nanoshield > 0)
	{
		exit	
	}
	
	//sword swing state
	if (instance_exists(obj_player))
	{
		if (global.sword_swing_available > 0) && (obj_player.state = Sword_spin)
		{
			exit	
		}
	}
	
	if (global.room_transition = 1) or (global.room_transition1 = 1) or (global.room_transition_more = 1)
	or (global.room_transition_nodoors = 1) or (global.room_transition_nodoors_2 = 1) or (global.room_transition_nodoors_more = 1) or (global.boss_warning == 1)
	{
		global.hurt = 0
		exit	
	}
	
	if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
	&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dash2_spark = 0)
	&& ((global.nanoshield <= 0) or ((global.nanoshield_ammo <= 0) && (global.nanoshield > 0)))
	&& (global.climbing = 0)
	{
	    global.hurt = 1;
		global.healthKiller = argument0;
	}
	else if (place_meeting(x,y,obj_player)) && (global.dashuse != 1) && ((object_player2_0_sprites.sprite_index != spr_screwjump_left1) && (object_player2_0_sprites.sprite_index != spr_screwjump_right1))
	&& (global.hurt = 0) && (global.hurt2 = 0) && (global.dash2_spark = 0) && (global.nanoshield > 0) && (global.climbing = 0)
	{
	    global.hurt = 1;
		global.healthKiller = 0
		global.hurt2 = 1;
		with(obj_ability_nanoshield)
		{
			nanoshield_hp--	
		}
	}
	exit;


}
