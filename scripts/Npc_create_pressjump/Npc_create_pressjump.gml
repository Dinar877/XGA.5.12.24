// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Npc_create_pressjump(){
	pressjumpID = -1;
	pressjumpID = instance_create_layer(x,y-20,layer_get_id("Inst_doors"),obj_npc_pressjump);
	with(pressjumpID)
	{
		npcID = other.id;	
	}
}