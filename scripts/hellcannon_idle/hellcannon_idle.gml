// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hellcannon_idle(){
	
	//shoot
	if ((inst2.inst_circle) && (inst2.inst_circle2))
	or (grenadeTimer >= 1)
	{
		grenadeTimer = 0;
		
		if (facing = -1)
		{
			sprite_index = spr_hellcannon_shoot_left;
			image_index = 0;
		}
		else if (facing = 1)
		{
			sprite_index = spr_hellcannon_shoot_right;
			image_index = 0;
		}
		
		State_machine_switch_state(hellcannon_shoot);
		exit;
	}
	
	//move
	if (inst2.inst_circle) && (!inst2.inst_circle2) && (grenadeTimer < 1)
	{
		State_machine_switch_state(hellcannon_forward);
	}
	
	//grenade timer
	grenadeTimer += (random_range((1/60)/2,(1/60)/5));

}