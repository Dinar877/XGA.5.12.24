decider = round(random_range(0,1))

timer = 0;

whichBlocker = 0;

image_angle = round(random_range(image_angle = 50,image_angle = -50));
speed = 1.3;

direction1 = 0
direction2 = 0
directionX = 0;

xSpeed = 0;
xSpeedAdder = 0.01;
ySpeed = 0;

adder1 = 0;
adder2 = 0;
hit = 0;
hit2 = 0;
timer = 0;

startx = 0
startY = y;

doorpiece_surface = -1
door_type = 0

timer = 0;
explode = false;



//audio
emitter_player = audio_play_sound_at(snd_electricity,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume);
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y);
snd_inst = -1;


inst_ThdC = 0
inst_ThdF = 0