/// @description Insert description here
// You can write your code in this editor
timer = 0;
xx = 0;
yy = 0

//particle system shiiieeet
global.inst_particle_N++;
inst_n = global.inst_particle_N

global.inst_particle_system[inst_n] = part_system_create()
global.inst_particle_emitterID[inst_n] = part_emitter_create(global.inst_particle_emitterID[inst_n])
global.inst_particle_type[inst_n] = part_type_create()


part_type_sprite(global.inst_particle_type[inst_n], random_range(spr_spore1,spr_spore2), false, false, false)

part_emitter_region(global.inst_particle_emitterID[inst_n],global.inst_particle_emitterID[inst_n],bbox_left,bbox_right,bbox_top,bbox_bottom,ps_shape_rectangle,ps_distr_linear)
