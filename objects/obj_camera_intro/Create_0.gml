distance_to_border = 0;
distance_to_border2 = 0;
distance_to_border3 = 0;
distance_to_border4 = 0
distance_to_borderU = 0;
distance_to_borderD = 0;

y1 = y
x1 = x

collision_L = collision_rectangle(obj_camera_intro.x+185,obj_camera_intro.y+125,obj_camera_intro.x-185,obj_camera_intro.y-125,obj_camera_stopperL,false,true);
collision_R = collision_rectangle(obj_camera_intro.x+185,obj_camera_intro.y+125,obj_camera_intro.x-185,obj_camera_intro.y-125,obj_camera_stopperR,false,true);
collision_U = collision_rectangle(obj_camera_intro.x+185,obj_camera_intro.y+125,obj_camera_intro.x-185,obj_camera_intro.y-125,obj_camera_stopperU,false,true);
collision_D = collision_rectangle(obj_camera_intro.x+185,obj_camera_intro.y+125,obj_camera_intro.x-185,obj_camera_intro.y-125,obj_camera_stopperD,false,true);

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

//deadzone variable stuff
leftX = -10;
rightX = 10;
upY = -10;
downY = 10;

yshake = 0
yshake2 = 0
