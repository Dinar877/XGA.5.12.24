hspd = 0;
vspd = 0;
shootlimit= 0;
enemy = 0;
enemy_contact = 0;
enemy_nohit = 0
started1 = 0;

timer1 = 0
timer = 0

reflect_limit = 1;

shield_active = 0
subimage = 0
drawX = 0
drawY = 0


explosion_sndno = round(random_range(0,2))

if (explosion_sndno == 0)
{
	explosion_snd = asset_get_index(audio_get_name(snd_beamexplosion))
}
else if (explosion_sndno == 1)
{
	explosion_snd = asset_get_index(audio_get_name(snd_beamexplosion1))
}
else if (explosion_sndno == 2)
{
	explosion_snd = asset_get_index(audio_get_name(snd_beamexplosion2))
}

inst3 = 0;
inst4 = 0;

charge = 0;
burn = 0;
homing = 0;

inst_target = 0;
inst_nearest = 0;
inst_dir = 0;

recorded_started = 0;
recorded_hspd = 0;
recorded_vspd = 0;

hitnow1 = 0;
hitnow2 = 0;
hitnow3 = 0;
hitnowenemy = 0
hit_reflected = 0;
hit_pausecollisions = 0


collisionline_forward_enemy_robots = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies_robots,true,false)
collisionline_backward_enemy_robots = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies_robots,true,false)

collisionline_forward_enemy_nohitXGA = collision_line(x,y,x+(hspd*1),y+(vspd*1),obj_link_enemies_nohit_xga,true,false)
collisionline_backward_enemy_nohitXGA = collision_line(x,y,x-(hspd*1),y-(vspd*1),obj_link_enemies_nohit_xga,true,false)

