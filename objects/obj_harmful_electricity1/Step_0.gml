/// @description Insert description here
// You can write your code in this editor
if (global.bossblockers[BossblockerID] > 0)
{
	instance_destroy()	
	audio_pause_sound(snd_electricity)
	exit
}



if (instance_exists(obj_boss_bugspider_sprites))
{
	if (obj_boss_bugspider_sprites.warning > 0)
	{
		sprite_index = spr_harmful_electricity1
		if (global.hurt == 0) && (global.hurt2 == 0) && (place_meeting(x,y,obj_player))
		{
			enemy_hurt_player_code(2)
		}
	}
	else sprite_index = -1
}
else exit;

//glow effect
xscaleglow = random_range(0.9,1.1);
yscaleglow = random_range(0.9,1.1);
imageAngleGlow = random_range(0,360);