limit2 = 0;
fully_charged = 0;
pause = 0;
timer_charging = 0;
started_charging = 0;
image_index = 0;
gamepad_counter = 0;
correct_slot = 0;
gamepad_counter2 = 0;

//palette swapping stuff
current_pal=0;
my_pal_sprite=spr_palete_megashot;
surfacemegap = -1

start_x = x;
start_y = y;


timer = 0;
xx = 0;
yy = 0

//particle system shiiieeet
global.inst_particle_N++;
inst_n = global.inst_particle_N

global.inst_particle_system[inst_n] = part_system_create()
global.inst_particle_emitterID[inst_n] = part_emitter_create(global.inst_particle_system[inst_n])
global.inst_particle_type[inst_n] = part_type_create()


part_type_sprite(global.inst_particle_type[inst_n], spr_trueintro_spraypipe_particle, false, false, false)

part_emitter_region(global.inst_particle_system[inst_n], global.inst_particle_emitterID[inst_n],x-14,x-14,y-19,y-19,ps_shape_rectangle,ps_distr_linear)

part_emitter_stream(global.inst_particle_system[inst_n],global.inst_particle_emitterID[inst_n] , global.inst_particle_type[inst_n], 3);

