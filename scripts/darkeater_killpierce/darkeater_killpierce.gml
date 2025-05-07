// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function darkeater_killpierce(){
	
	state = darkeater_killpierce;
	
	hspd = 0;
	vspd = 0;
	
	global.darkeater_active = 0;
	global.walljump = 0;
	global.hurt = 0;
	global.frozen = 0;
	global.superheated = 0;
	global.lockdown_facingDir = 0;
	global.hang = 0;
	global.grounded = 0;
	global.climbing = 0;
	
	//health ui
	with(obj_healthnumberten)
			{
					health_decrease_go = 0
					health_decrease = 0
					health_total = 0
			}
			
			
	if (!instance_exists(obj_scrnDark))
	{
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrnDark);
	}
			
			
	
	if (pierce_killswitch_timer > 0)
	{
		pierce_killswitch_timer -= (1/60);
	}
	else if (pierce_killswitch_timer <= 0) && (pierce_killswitch_timer > -2)
	{
		global.dead = 1;
		global.turning = 0;
		global.hang = 0;
		global.climbing = 0;
		global.lockdown_facingDir = 1;
		global.dashbegin = 0;
		global.dashcharge = 0;
		global.dashuse = 0;
		global.dashend = 0;
		global.walljump = 0;
		global.dead_begin = 0;
		global.hurt = 0;
		global.pierce_killswitch = 0;
		
		audio_sound_gain(sndID2,0,3000);
		audio_sound_gain(sndID3,0,3000);
		audio_sound_gain(sndID4,0,3000);
		
		instance_create_layer(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),layer_get_id("Inst_scrn"),obj_scrn_roomtransition);
		timer_death = -2;
	}
}