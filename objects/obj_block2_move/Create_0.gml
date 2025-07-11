transition = 0;
am_ledge = 1;

playerOntop = (place_meeting(x,y-1,obj_player));
playerSides = (place_meeting(x-1,y,obj_player)) or (place_meeting(x+1,y,obj_player));
playerBelow = (place_meeting(x,y+1,obj_player));
playerDontMove = 0;

hspd = 0;
vspd = 0;

direction1 = 1;

timer1  = 0;

startX = x;
startY = y;
finishX = 0;
finishY = 0;
switchX = 0;
switchY = 0;
counterX = 0;
counterY = 0;