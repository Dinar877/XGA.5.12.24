// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wm_deleteobjects(){
	
	//areas
	if (instance_exists(obj_wm_a_mainsector))
	{
		instance_destroy(obj_wm_a_mainsector);
	}
	if (instance_exists(obj_wm_a_s1))
	{
		instance_destroy(obj_wm_a_s1);
	}
	if (instance_exists(obj_wm_a_s2))
	{
		instance_destroy(obj_wm_a_s2);
	}
	if (instance_exists(obj_wm_a_s3))
	{
		instance_destroy(obj_wm_a_s3);
	}
	if (instance_exists(obj_wm_a_s4))
	{
		instance_destroy(obj_wm_a_s4);
	}
	if (instance_exists(obj_wm_a_t))
	{
		instance_destroy(obj_wm_a_t);
	}
	if (instance_exists(obj_wm_a_v))
	{
		instance_destroy(obj_wm_a_v);
	}
	if (instance_exists(obj_wm_a_sc))
	{
		instance_destroy(obj_wm_a_sc);
	}
	if (instance_exists(obj_wm_a_ms))
	{
		instance_destroy(obj_wm_a_ms);
	}
	
	//bridges
	if (instance_exists(obj_wm_b_mainsector_s1))
	{
		instance_destroy(obj_wm_b_mainsector_s1);
	}
	if (instance_exists(obj_wm_b_mainsector_s2))
	{
		instance_destroy(obj_wm_b_mainsector_s2);
	}
	if (instance_exists(obj_wm_b_mainsector_s3))
	{
		instance_destroy(obj_wm_b_mainsector_s3);
	}
	if (instance_exists(obj_wm_b_mainsector_s4))
	{
		instance_destroy(obj_wm_b_mainsector_s4);
	}
	if (instance_exists(obj_wm_b_mainsector_t))
	{
		instance_destroy(obj_wm_b_mainsector_t);
	}
	if (instance_exists(obj_wm_b_s1_s4))
	{
		instance_destroy(obj_wm_b_s1_s4);
	}
	if (instance_exists(obj_wm_b_s1_t))
	{
		instance_destroy(obj_wm_b_s1_t);
	}
	if (instance_exists(obj_wm_b_s2_s3))
	{
		instance_destroy(obj_wm_b_s2_s3);
	}
	if (instance_exists(obj_wm_b_s2_t))
	{
		instance_destroy(obj_wm_b_s2_t);
	}
	if (instance_exists(obj_wm_b_v_sc))
	{
		instance_destroy(obj_wm_b_v_sc);
	}
	if (instance_exists(obj_wm_b_sc_ms))
	{
		instance_destroy(obj_wm_b_sc_ms);
	}
}