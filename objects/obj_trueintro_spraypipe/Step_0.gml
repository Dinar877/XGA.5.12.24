if (sprite_index = spr_trueintro_spraypipe_notactive)
{
	sprite_index = spr_trueintro_spraypipe_start	
	var snd = audio_play_sound(snd_gaspipe,1000,false,global.sfx_volume)
}
else if (sprite_index = spr_trueintro_spraypipe_start) && (image_index >= image_number-1)
{
	sprite_index = spr_trueintro_spraypipe_active	
}

if (sprite_index = spr_trueintro_spraypipe_active) && (part_system_exists(global.inst_particle_system[inst_n]))
{
	yy += 0.07
	xx += 0.11

	part_type_speed(global.inst_particle_type[inst_n],4,5,0,0)
	part_type_direction(global.inst_particle_type[inst_n],random_range(-30,-80),random_range(-30,-80),0.5,1)
	part_type_life(global.inst_particle_type[inst_n],10,15)
}

if (sprite_index = spr_trueintro_spraypipe_end) && (image_index >= image_number-1) && (part_system_exists(global.inst_particle_system[inst_n]))
{
	image_speed = 0
	audio_stop_sound(snd_gaspipe)
	part_emitter_destroy(global.inst_particle_system[inst_n], global.inst_particle_emitterID[inst_n])
}