/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables)

if (timerfade = 1) && (FadeNow2 == 0)
{
	FadeNow2 = 1.0;
}

if (FadeNow2 > 0)
{
	FadeNow2 -= 0.025;
}
else if (FadeNow2 < 0)
{
	FadeNow2 = 0;	
}


////PAUSED CONTROLS FOR MAP
