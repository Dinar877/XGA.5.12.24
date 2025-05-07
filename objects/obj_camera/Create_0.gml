distance_to_border = 0;
distance_to_border2 = 0;
distance_to_border3 = 0;
distance_to_border4 = 0
distance_to_borderU = 0;
distance_to_borderD = 0;

climbspeed = 0;
reduceclimbspeed = 0;

dontmove = 0

collision_L = collision_rectangle(obj_camera.x+185,obj_camera.y+125,obj_camera.x-185,obj_camera.y-125,obj_camera_stopperL,false,true);
collision_R = collision_rectangle(obj_camera.x+185,obj_camera.y+125,obj_camera.x-185,obj_camera.y-125,obj_camera_stopperR,false,true);
collision_U = collision_rectangle(obj_camera.x+185,obj_camera.y+125,obj_camera.x-185,obj_camera.y-125,obj_camera_stopperU,false,true);
collision_D = collision_rectangle(obj_camera.x+185,obj_camera.y+125,obj_camera.x-185,obj_camera.y-125,obj_camera_stopperD,false,true);

lockxl = 0;
lockxr = 0;

lockxl2 = 0;
lockxr2 = 0;

lockyl = 0;
lockyr = 0;

lockyl2 = 0;
lockyr2 = 0;

xresult = 0;
yresult = 0;

crouching = 0;

LOCK = 0;

doorID = -1

//deadzone variable stuff
leftX = -10;
rightX = 10;
upY = -10;
downY = 10;


//smoothing transition between spinjump and stand
xspin = 0;
yspin = 0;
xcrouch = 0;
ycrouch = 0;

ygrid = 0
ygridend = 0

xshake = 0;
yshake = 0;
yshake2 = 0;
xshakeno = 3;
yshakeno = 3;



//gamepad variable stuff
gamepad_counter = 0;
gamepad_counter2 = 0;
correct_slot = 0;

right_key = 0
right_key_pressed = 0

left_key = 0
left_key_pressed = 0

up_key = 0
up_key_pressed = 0

down_key = 0
down_key_pressed = 0


jump = 0
dash = 0
shoot = 0
shoot_pressed = 0

Select = 0;

AimDown = 0
AimtrueUp = 0
AimUp = 0

L1 = 0
R1 = 0
L2 = 0
R2 = 0



xcounter = 0
darkeater_switch = 0