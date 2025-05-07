function bullet_insideblock() {
	while ((place_meeting(x-(hspd),y-(vspd),obj_block)) or (place_meeting(x-(hspd/2),y-(vspd/2),obj_block)) or (place_meeting(x-sign(hspd),y-sign(vspd),obj_block)))
		&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y,obj_block)) && (place_meeting(x+hspd,y-vspd,obj_block)) && (vspd < 0)
		&& (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		{
			x -= sign(hspd)
			y++
		}

	while ((place_meeting(x-(hspd),y-(vspd),obj_block)) or (place_meeting(x-(hspd/2),y-(vspd/2),obj_block)) or (place_meeting(x-sign(hspd),y-sign(vspd),obj_block)))
		&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y,obj_block)) && (place_meeting(x+hspd,y-vspd,obj_block)) && (vspd > 0)
		&& (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		{
			x -= sign(hspd)
			y--
		}
	
	while ((place_meeting(x-(hspd),y-(vspd),obj_block)) or (place_meeting(x-(hspd/2),y-(vspd/2),obj_block)) or (place_meeting(x-sign(hspd),y-sign(vspd),obj_block)))
		&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y,obj_block)) && (place_meeting(x-hspd,y+vspd,obj_block)) && (hspd < 0)
		&& (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		{
			y -= sign(hspd)
			x++
		}

	while ((place_meeting(x-(hspd),y-(vspd),obj_block)) or (place_meeting(x-(hspd/2),y-(vspd/2),obj_block)) or (place_meeting(x-sign(hspd),y-sign(vspd),obj_block)))
		&& ((hspd != 0) or (vspd != 0)) && (hitnow3 = 0)
		&& (place_meeting(x,y,obj_block)) && (place_meeting(x-hspd,y+vspd,obj_block)) && (hspd > 0)
		&& (!place_meeting(x,y,obj_slope1_right)) && (!place_meeting(x,y,obj_slope1_left))
		{
			y -= sign(hspd)
			x--
		}


}
