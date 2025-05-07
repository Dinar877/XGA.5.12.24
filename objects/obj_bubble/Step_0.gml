/// @description Insert description here
// You can write your code in this editor
y -= 0.11; //falling rate, can be easily adjusted

x += random_range(0.05,0.3)*sin(y);

if (y = -10)
{
	instance_destroy()	
}