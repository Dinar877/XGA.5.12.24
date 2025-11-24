/// @description Insert description here
// You can write your code in this editor
if (audio_exists(emitter_player))
{
	audio_stop_sound(emitter_player);
}
with(inst_ThdC)
{
	if (audio_exists(emitter_player))
	{
		audio_stop_sound(emitter_player);
	}
}
with(inst_ThdF)
{
	if (audio_exists(emitter_player))
	{
		audio_stop_sound(emitter_player);
	}
}


instance_destroy(inst_ThdC);
instance_destroy(inst_ThdF);
instance_destroy()