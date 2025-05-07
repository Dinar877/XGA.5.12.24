

//normal or corrupted music
if (global.corrupted <= 0)
{
	Music_loop(sndID, 0.106,184.101);
}
else if (global.corrupted > 0)
{
	Music_loop(sndID, 0, 0);
}
			
sndID = -1
instance_destroy()