/// @description Insert description here
// You can write your code in this editor
//do not run code if player no longer exists
if (!instance_exists(obj_player))
{
	instance_destroy();
	exit;
}

playerX = obj_player.x;
playerY = obj_player.y;

randX = (random_range(-10,10));
randY = (random_range(-20,20));

x = playerX + randX;
y = playerY + randY;

//sfx
audio_stop_sound(snd_burneffect);
snd = audio_play_sound(snd_burneffect,1000,false,global.sfx_volume,0,1+(random_range(-0.1,0.1)))