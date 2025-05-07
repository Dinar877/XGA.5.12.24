/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()

if (textyID > -1)
{	
	with(textyID)
	{
		instance_destroy()	
	}
	
	//destroy upgrade title screen text
	if (instance_exists(obj_texty_upgradeTitle))
	{
		instance_destroy(obj_texty_upgradeTitle);	
	}
	
	if (spawnerID != object_player2_0_sprites.id)
	{
		with(spawnerID)
		{
			global.upgradecollected[upgradeID] = 1;
			global.upgrade_process = 0
			global.upgradeID_room[upgradeID] = room
			instance_destroy();
		}
	}
	
	
	if (instance_exists(obj_text_spawning_arrow_upgrade_ender))
	{
		instance_destroy(obj_text_spawning_arrow_upgrade_ender)
	}
	
	with(obj_scrn_roomtransition)
	{
		instance_destroy()	
	}
	
	global.upgrade_process = 0
	
	
	instance_activate_all()
	
	
	//player sprites
	if (instance_exists(object_player2_0_sprites))
	{
		with(object_player2_0_sprites)
		{
			image_speed = 1	
		}
	}
	
	instance_destroy()
}