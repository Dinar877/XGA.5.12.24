/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if (obj_player.state = Dead)
	{
		exit;
	}
}
else exit;

xga_exists = instance_exists(obj_darkeater_hitbox);

//sync up image index to correct xga sprite's image index
image_index = obj_darkeater_sprites.image_index-20;


if (xga_exists <= 0)
{
	exit;	
}

if (place_meeting(x,y,obj_player))
{
	kill_player = 1;	
}
else kill_player = 0;

if (image_index >= (image_number-1))
{
	instance_destroy();	
}





