/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_camera))
{
	x = obj_camera.x
	y = obj_camera.y
}

if (image_alpha > 0)
{
	image_alpha-= 0.03
}
else image_alpha = 0.5

if (audio_is_playing(sndID)) && ((audio_sound_get_track_position(sndID)) >= 20.0) && (obj_xga_replicator_bg1.on = 2)
{
	audio_sound_set_track_position(sndID,0)
}