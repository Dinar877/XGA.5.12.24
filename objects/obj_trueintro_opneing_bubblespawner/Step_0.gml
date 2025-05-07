/// @description Insert description here
// You can write your code in this editor
if(timer == 0) && (instance_number(obj_bubble) < 150)
{
    xx = irandom_range(bbox_left, bbox_right);
    instance_create_layer(xx, y-8,layer_get_id("Inst_afterimages"), obj_bubble);
}
if(timer <= 0) timer = irandom_range(100, 300);
timer --;

if (emitter_vol < 0.8)
{
	emitter_vol += (1/60)/5
}
audio_emitter_gain(global.inst_audio_emitterID[inst_n],emitter_vol * global.sfx_volume)