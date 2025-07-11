/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.loading = 1)
or (global.pause = 1)
or (global.dead = 1)
or (global.boss_warning = 1)
or (global.navigation = 1) or (global.navigation_effect = 1)
or (global.upgrade_process_data = 1) or (global.upgrade_process = 1)
or (global.corelock_engage = 1)
or (global.stopper_2ndscrnshot = 1)
or (global.cutscene = 1) or (global.cutscene_suit = 1) or (global.loading_startgame = 1)
or (global.room_transition_prep == 1) or (global.room_y == 1)
{
	exit	
}


/////////////////////
if (instance_exists(obj_player)) && (instance_exists(obj_camera))
{
	x = obj_camera.x
	y = obj_camera.y-50
}
	

if (instance_exists(obj_player))
{
	if ((room = rm_11_7_6) or (room = rm_11_7_6_xgatest))
	&& (obj_player.x >= 620) && (obj_player.x <= 690)
	&& (!instance_exists(obj_endgame_xga_energycircle))
	&& (scrnbg == 0)
	&& (sprite_index == spr_navigation_blackhole_red)
	&& (global.upgradecollected[upgrades.voltengine] == 0)
	{
		instance_create_layer(x,y,layer_get_id("Inst_scrn"),obj_endgame_xga_energycircle)
		scrnbg = 1
	}
	else if (instance_exists(object_player2_0_sprites))
	&& (scrnbg == 2)
	{
		if (object_player2_0_sprites.image_index >= object_player2_0_sprites.image_number-1)
		&& ((object_player2_0_sprites.sprite_index == spr_death_left) or (object_player2_0_sprites.sprite_index == spr_death_right))
		{
			//PLAYER 2.0 SPRITES
			if (instance_exists(object_player2_0_sprites))
			{
				with(object_player2_0_sprites)
				{
					if (global.facingDir = 1)
					{
						sprite_index = spr_midgame_player_flash_right
						image_index = 0
						image_speed = 1
					}
					else if (global.facingDir = -1)
					{
						sprite_index = spr_midgame_player_flash_left
						image_index = 0
						image_speed = 1
					}
				}
			}
		}
	}
}