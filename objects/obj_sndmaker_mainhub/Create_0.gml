/// @description Insert description here
// You can write your code in this editor
if (global.corrupted <= 0)
{
	sndID = ost_peaceful_loop_remastered
}
else if (global.corrupted > 0)
{
	sndID = ost_dark_remastered
}


		
//destroy and don't play music if being chased by xga
if (global.darkeater_active == true)
{
	instance_destroy();	
}