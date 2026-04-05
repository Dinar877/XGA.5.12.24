/// @description Insert description here
// You can write your code in this editor
global.sc_timelimit -= dt

if (global.sc_timelimit <= 0)
{
	instance_create_depth(random_range(obj_camera.x-160,obj_camera.x+160),random_range(obj_camera.y-90,obj_camera.x+90),depth-1,obj_enemy_bigexplosion)
	instance_create_depth(random_range(obj_camera.x-160,obj_camera.x+160),random_range(obj_camera.y-90,obj_camera.x+90),depth-1,obj_enemy_bigexplosion)
	instance_create_depth(random_range(obj_camera.x-160,obj_camera.x+160),random_range(obj_camera.y-90,obj_camera.x+90),depth-1,obj_enemy_bigexplosion)
}