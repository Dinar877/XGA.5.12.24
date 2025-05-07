/// @description Insert description here
// You can write your code in this editor
script_execute(Gamepad_variables);

if (FadeNow <= 0)
{
	FadeNow = 0.4;	
}

if (delay < 1) && (selected == 1)
{
	delay += 0.05;	
}

if (selected == 0) && (jump_pressed)
{
	on = 0;	
}

