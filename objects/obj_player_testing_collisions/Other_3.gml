/// @description Insert description here
// You can write your code in this editor
if (global.darkeater_grid > -1)
{
	mp_grid_destroy(global.darkeater_grid)	
}

if (global.darkeater_pathadd > -1)
{
	path_delete(global.darkeater_pathadd)	
}


		global.inst_audio_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (audio_emitter_exists(global.inst_audio_emitterID[i]))
			{
				audio_emitter_free(global.inst_audio_emitterID[i])
			}
			global.inst_audio_emitterID[i] = false
		}
	
		///particle system
		global.inst_particle_N = 0
		for (var i = 0; i < 999; i++)
		{
			if (part_emitter_exists(global.inst_particle_emitterID[i],global.inst_particle_system[i]))
			{
				part_emitter_destroy(global.inst_particle_emitterID[i],global.inst_particle_system[i])
			}
			global.inst_particle_emitterID[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (part_system_exists(global.inst_particle_system[i]))
			{
				part_system_destroy(global.inst_particle_system[i])
			}
			global.inst_particle_system[i] = false
		}
		for (var i = 0; i < 999; i++)
		{
			if (part_type_exists(global.inst_particle_type[i]))
			{
				part_type_destroy(global.inst_particle_type[i])
			}
			global.inst_particle_type[i] = false
		}