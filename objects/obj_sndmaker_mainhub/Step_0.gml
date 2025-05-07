/// @description Insert description here
// You can write your code in this editor
		

//peaceful loop or dark loop
if (global.corrupted <= 0)
{
	Music_loop(sndID, 0.114, 57.759);
}
else if (global.corrupted > 0)
{
	Music_loop(sndID, 0.123, 90.46);
}
			
sndID = -1;
instance_destroy();
