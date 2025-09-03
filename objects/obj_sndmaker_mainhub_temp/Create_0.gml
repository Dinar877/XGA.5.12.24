/// @description Insert description here
// You can write your code in this editor
sndID = ost_investigation_remastered
redblockerID = 0

//destroy and don't play music if being chased by xga
if (global.darkeater_active == true)
{
	instance_destroy();	
}