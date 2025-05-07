/// @description Insert description here
// You can write your code in this editor
if (global.sector_transition <= 0) && (stopsnd <= 0)
{
	if (emitter_start < 1)
	{
	emitter_start += 0.06;
	}
	emitterSin += 0.006
	emitter_pitch = 1 + (sin(emitterSin))/30
	emitter_vol = emitter_start + (sin(emitterSin))/30
	audio_emitter_pitch(inst_audio_emitterID,emitter_pitch)
	audio_emitter_gain(inst_audio_emitterID,emitter_vol)
}
else if (global.sector_transition > 0) or (stopsnd > 0)
{
	emitter_vol -= 0.01
	audio_emitter_gain(inst_audio_emitterID,emitter_vol)
	if (emitter_vol < 0)
	{
		emitter_vol = 0	
		audio_emitter_free(inst_audio_emitterID)
		instance_destroy()
	}
}