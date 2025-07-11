/// @description Insert description here
// You can write your code in this editor
if (timer1 < 1)
{
	timer1 += ((1/60));
}
else 
{
	instance_destroy();
	exit;
}

//sword
if (instance_place(id.x,id.y,obj_player_sword_hitbox))
{
    sword_hurtenemycode_noeffect()
}
