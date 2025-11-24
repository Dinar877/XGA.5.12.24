/// @description Insert description here
// You can write your code in this editor
directionX = round(random_range(0,1));
xspeed = 0;
xspeedAdder = 0.4;
yspeed = 0;
go = 0;
detected = false;

startY = y;
initialUp = 5;

killTimer = 5;

inst_sight = instance_create_depth(x,y,depth-1,obj_xga3_inviseye_sight);