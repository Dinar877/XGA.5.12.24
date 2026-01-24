// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wm_makeobjects(){
	
	var xcoord = 80
	var ycoord = 27
	
	for (var i = 0; i < 99; i++)
	{
		if (global.wm_found[i] == true)
		{
			if (i = 0)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_mainsector)	
			}
			else if (i = 1)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_s1)	
			}
			else if (i = 2)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_s2)	
			}
			else if (i = 3)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_s3)	
			}
			else if (i = 4)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_s4)	
			}
			else if (i = 5)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_t)	
			}
			else if (i = 6)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_v)	
			}
			else if (i = 7)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_sc)	
			}
			else if (i = 8)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_a_ms)	
			}
			else if (i = 9)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_mainsector_s1)	
			}
			else if (i = 10)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_mainsector_s2)	
			}
			else if (i = 11)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_mainsector_s3)	
			}
			else if (i = 12)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_mainsector_s4)	
			}
			else if (i = 13)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_mainsector_t)	
			}
			else if (i = 14)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_s1_s4)	
			}
			else if (i = 15)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_s2_s3)	
			}
			else if (i = 16)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_s1_t)	
			}
			else if (i = 17)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_s2_t)	
			}
			else if (i = 18)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_v_sc)	
			}
			else if (i = 19)
			{
				instance_create_depth(x+xcoord,y+ycoord,depth+1,obj_wm_b_sc_ms)	
			}
		}
	}

}