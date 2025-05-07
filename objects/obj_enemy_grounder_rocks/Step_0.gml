/// @description Insert description here
// You can write your code in this editor
x += movH;
y += movV;

movH += (sign(movH)*0.25);
movV += 0.5;

image_index += 0.4*sign(movH); 
image_alpha -= 0.005;

if (image_alpha <= 0.00)
{
	instance_destroy();
}