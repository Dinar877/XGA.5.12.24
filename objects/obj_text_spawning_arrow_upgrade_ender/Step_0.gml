/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)

Gamepad_variables()

if (jump_pressed) && (textyID > -1) && (instance_exists(spawnerID))
{	
	with(textyID)
	{
		if (variable_instance_exists(self, "isTitle"))
		{
			if (floor(time)+message_pos+1 >= text_length) && (text_length > 15) && (isTitle == 0)
			{
				instance_destroy(obj_texty_upgradeTitle);
			}
			
			instance_destroy();
		}
		else instance_destroy();
	}
	if (spawnerID != object_player2_0_sprites.id)
	{
		with(spawnerID)
		{
			global.upgradecollected[upgradeID] = 1;
			global.upgradeID_room[upgradeID] = room
			instance_destroy();
		}
	}
	
	with(obj_scrn_roomtransition)
	{
		fadeout1 = 1;	
	}
	
	instance_destroy()
}