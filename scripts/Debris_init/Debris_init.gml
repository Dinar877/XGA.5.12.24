// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Debris_init(){
	xSpeed = argument0;
	ySpeed = argument1;
	grav = argument2;
	rotSpeed = argument3;
	rotDir= round(random_range(0,1));
	adder1 = 0;
	adder2 = 0;
	hit = 0;
	hit2 = 0;
	timer = 0;
	failsafeTimer = 0;

	doorpiece_surface = -1;
	door_type = 0;
}