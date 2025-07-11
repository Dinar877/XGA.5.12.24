creator = 0;
go = 0;
facing = -1;
turning = 0;
hspd = 0;
vspd = 0;
vspdKiller = 0;
BossblockerID = 21;


random_pickup1 = irandom_range(0,5);
random_pickup2 = irandom_range(0,5);
random_pickup3 = irandom_range(0,5);

prep_now = 0;
knockback_now = 0;
run_now = 0;

set_direction = 0;
set_dir2 = 0;

FadeNow = 0;
started1 = 0;
started2 = 0;

started_idle = 0;
idleY = 0;
idleY2 = 0;
idleswitch1 = 1;
idleswitch2 = 0;
timer = 0;
timer2shoot = 1;
inst1created = 0;

statetimer2jump = 0;
statetimer2stamp = 0;

fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for getting hurt by player
stop1 = 0;
enemy_hurt = 0;
enemy_almost_hurt = 0;
stay = 0;

knockback = 0;
inactive = 1;
deathanim = 0;


//destroy
if (global.corrupted <= 0)
{
	instance_destroy();
	
	if (global.bossblockers[BossblockerID] > 0)
	{
		instance_destroy();
	
		if (!instance_exists(obj_upgrade_kelvin)) && (global.upgradecollected[upgrades.heatBalancer] <= 0)
			{
				var inst1 = instance_create_layer(x,y+26,layer_get_id("Inst_level_0"),obj_upgrade_kelvin)
				with(inst1)
				{
					upgradeID = 958
				}	
			}
	}
	
	exit;
}



instance_create_layer(id.x,id.y+1,layer_get_id("Inst_level_0"),obj_boss_gorilla_sprites);