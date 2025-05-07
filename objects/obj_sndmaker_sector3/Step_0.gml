/// @description Insert description here
// You can write your code in this editor

//normal or corrupted music
if (global.corrupted <= 0)
{
	Music_loop(sndID, 0.111,129.887);
}
else if (global.corrupted > 0)
{
	Music_loop(sndID, 0,53.342);
}
			
sndID = -1
instance_destroy()