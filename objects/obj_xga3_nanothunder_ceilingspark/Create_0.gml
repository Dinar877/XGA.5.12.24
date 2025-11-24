decider = round(random_range(0,1))



whichBlocker = 0;

image_angle = round(random_range(image_angle = 50,image_angle = -50));

direction1 = sign(random_range(3,-3))
direction2 = -1
adder1 = 0;
adder2 = 0;
hit = 0;
hit2 = 0;
timer = 0;

startx = 0
starty = random_range(1,5)

doorpiece_surface = -1
door_type = 0

timer = 0;
explode = false;



//audio
emitter_player = audio_play_sound_at(snd_electricity,id.x,id.y,0,30,200,1,true,1000,global.sfx_volume);
dist = point_distance(id.x,id.y,obj_player.x,obj_player.y);
snd_inst = -1;
