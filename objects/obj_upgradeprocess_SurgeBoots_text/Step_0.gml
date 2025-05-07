/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1)
{
	image_alpha += 0.025;
}
if (image_alpha + 0.05>= 1) && (image_alpha < 1)
{
	image_alpha += 0.05;
	instance_create_layer(x,y-1,layer_get_id("Inst_healthui"),obj_upgradeprocess_HealthCtext_press);
}