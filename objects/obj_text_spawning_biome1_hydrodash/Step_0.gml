/// @description Insert description here
// You can write your code in this editor
//message = "CONFIRM MISSION OBJECTIVES?";
//Text(message,spd)
if (new1 == 0)
{
message2 = "HYDRODASH";
Text_generic(message2,spd)
instance_create_layer(x+30,y,layer_get_id("Inst_healthui_mapborder"),obj_upgradeprocess_HealthCtext_press);
new1 = 1;
}