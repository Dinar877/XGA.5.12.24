/// @description Insert description here
// You can write your code in this editor
if (global.pause_transition = 1)// or (global.pause_exit = 1)
or (global.pause_map = 1)
or (global.upgrade_process = 1)
{
	exit;	
}



direction1 = random_range(2,-2)
direction2 = random_range(2,-2)

if (!instance_exists(inst2))
{
x += direction1
y += direction2
}

if (instance_exists(inst2))
{
	var inst_1 = collision_circle(id.x,id.y,120,obj_player,false,true)
	var inst_2 = collision_circle(id.x,id.y,20,inst2,false,true)
	var inst_away = distance_to_object(inst2)
	
	if (inst_away < 10) && (inst2.hp > 0)
	{
		x += direction1
		y += direction2
	}
	else if (inst_away >= 10) && (instance_exists(inst2)) && (inst2.hp > 0)
	{
		x = lerp(id.x,inst2.x,0.25)
		y = lerp(id.y,inst2.y,0.25)
	}
}