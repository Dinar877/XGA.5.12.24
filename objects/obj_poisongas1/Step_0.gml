/// @description Insert description here
// You can write your code in this editor
if (WaveAmpl1 < 5) && (switchup = 1)
{
	WaveAmpl1 += 0.1;	
}
else if (WaveAmpl1 >= 5) && (switchup = 1)
{
	switchup = 0;
	switchdown = 1;
}

if (WaveAmpl1 > -5) && (switchdown = 1)
{
	WaveAmpl1 -= 0.1;	
}
else if (WaveAmpl1 <= -5) && (switchdown = 1)
{
	switchup = 1;
	switchdown = 0;
}

if (global.room_transition = 1) or (global.room_transition1 = 1)
{
	instance_destroy()	
}