
//normal or corrupted music
if (global.corrupted <= 0)
{
	Music_loop(sndID, 0.087,195.683);
}
else if (global.corrupted > 0)
{
	Music_loop(sndID, 0.114,120.11);
}
			
sndID = -1
instance_destroy()