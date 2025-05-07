// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_invincibility(){
	
	if (variable_instance_exists(self,"warning"))
	{
		if (warning = 1)
		{
			if (invincible > 0) && (enemy_hurt = 0.9) //2.
			{
			    invincible -= 1.6;
			    flashwhite_limit += 0.1; 
			}
	
			if (invincible <= 1) && (flashwhite_limit > -1) && (enemy_hurt = 0.9) //1.
			{
			    invincible += 1 - flashwhite_limit;
			}
	
			if (flashwhite_limit >= 1) && (flashwhite_limit > 0) && (enemy_hurt = 0.9) //3.
			{
			    invincible = 0;
			    flashwhite_limit = 0;
				enemy_hurt = 0
			}
		}
	}
}