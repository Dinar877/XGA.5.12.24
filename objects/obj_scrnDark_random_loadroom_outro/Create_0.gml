/// @description Insert description here
// You can write your code in this editor
image_alpha = 0.0;
endload = 0;
endload2 = 0;
endload3 = 0;
saving = 0;
endsaving = 0;


if (room = rm_V_SCC_mainroom) //dont spawn
&& (global.cutsceneID[Cutscenes.sc_key_aquired] = 1)
&& (global.cutsceneID[Cutscenes.sc_scrndark_cutscene] = 1)
{
	instance_destroy()	
}
else if (room = rm_V_SCC_mainroom) //returning from system core
&& (global.cutsceneID[Cutscenes.sc_key_aquired] = 1)
&& (global.cutsceneID[Cutscenes.sc_scrndark_cutscene] = 0)
{
	global.jumpingdm = 0
	global.jumping = 0
	obj_player.sprite_index = spr_player
	obj_player.x = 798
	obj_player.y = 493
	object_player2_0_sprites.x = obj_player.x
	object_player2_0_sprites.y = obj_player.y
	Teleport_Camera(obj_player.x,obj_player.y)	
}
else if (room = rm_V_SCC_mainroom) //nothing's happened yet
&& (global.cutsceneID[Cutscenes.sc_key_aquired] = 0)
&& (global.cutsceneID[Cutscenes.sc_scrndark_cutscene] = 0)
&& (global.cutsceneID[Cutscenes.scc_active] = 0)
&& (global.cutsceneID[Cutscenes.ssc_scrndarkCutscene] = 0)
{
	instance_destroy()	
}