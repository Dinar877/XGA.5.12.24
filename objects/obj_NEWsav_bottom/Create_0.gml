/// @description Insert description here
// You can write your code in this editor
inst = instance_create_layer(x+8,y+8,layer_get_id("Inst_doors"),obj_block2);
inst2 = instance_create_layer(x+24,y+8,layer_get_id("Inst_doors"),obj_block2);
inst3 = instance_create_layer(x+40,y+8,layer_get_id("Inst_doors"),obj_block2);

instance_create_layer(x+23,y,layer_get_id("Inst_doors"),obj_NEWsav_standbyeffect)

godownlimit = 0;
dontsave = 0;

savebegin_timer = 0;
ready = 0;
stopnow = 0;

FadeNow = 0.0;
started1 = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_fade_navigation_blueflash, "fade_color");
NewColor = shader_get_uniform(shd_fade_navigation_blueflash, "NewColor");