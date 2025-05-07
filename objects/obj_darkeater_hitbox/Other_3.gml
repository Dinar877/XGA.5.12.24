/// @description Insert description here
// You can write your code in this editor
if (audio_emitter_exists(global.inst_audio_emitterID[inst_n]))
{
	audio_emitter_free(global.inst_audio_emitterID[inst_n]);
}