/// @description Insert description here
// You can write your code in this editor
active = false
imageSpeed = 1
imageSpeedLimit = 5


//for flashing white shader
FadeNow = 0;
timerup = 0;
timerdown = 0;
fade_color = shader_get_uniform(shd_flash_fade_white, "fade_color");
NewColor = shader_get_uniform(shd_flash_fade_white, "NewColor");

//for talking
newTextAvailable = 0;

//delete object if already have shock suit
if (global.cutsceneID[Cutscenes.scc_active] == true)
{
	instance_destroy();
	exit;
}

Npc_create_pressjump()
Gamepad_init_variables()
Gamepad_variables()