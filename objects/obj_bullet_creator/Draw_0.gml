/// @description Insert description here
// You can write your code in this editor

//bullet 0
if (instance_exists(obj_bullet))
{
	with(obj_bullet)
	{
		if (global.beam_shield_available = 1) && (hitnow3 <= 0)
		{
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x,y,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd,y-vspd,1,1,0,c_white,0.65)
	
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd-6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd-6,1,1,0,c_white,0.65)
	
			if (subimage >= 1)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)-6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)-6,1,1,0,c_white,0.5)
			}
	
			if (subimage >= 2)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)-6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)-6,1,1,0,c_white,0.45)
			}
			
			if (subimage >= 3)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)-6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)-6,1,1,0,c_white,0.35)
			}
		}
		
		//if charged shot
		if (charge == 1)
		{
			draw_sprite_ext(sprite_index,image_index,x-(0.11*hspd),y-(0.11*vspd),1,1,0,c_white,0.5)	
			draw_sprite_ext(sprite_index,image_index,x-(0.18*hspd),y-(0.18*vspd),1,1,0,c_white,0.475)	
			draw_sprite_ext(sprite_index,image_index,x-(0.25*hspd),y-(0.25*vspd),1,1,0,c_white,0.45)
			draw_sprite_ext(sprite_index,image_index,x-(0.32*hspd),y-(0.32*vspd),1,1,0,c_white,0.425)	
			draw_sprite_ext(sprite_index,image_index,x-(0.39*hspd),y-(0.39*vspd),1,1,0,c_white,0.4)	
			draw_sprite_ext(sprite_index,image_index,x-(0.46*hspd),y-(0.46*vspd),1,1,0,c_white,0.375)	
			draw_sprite_ext(sprite_index,image_index,x-(0.53*hspd),y-(0.53*vspd),1,1,0,c_white,0.35)	
			draw_sprite_ext(sprite_index,image_index,x-(0.6*hspd),y-(0.6*vspd),1,1,0,c_white,0.325)	
			draw_sprite_ext(sprite_index,image_index,x-(0.67*hspd),y-(0.67*vspd),1,1,0,c_white,0.3)	
			draw_sprite_ext(sprite_index,image_index,x-(0.72*hspd),y-(0.72*vspd),1,1,0,c_white,0.275)	
			draw_sprite_ext(sprite_index,image_index,x-(0.79*hspd),y-(0.79*vspd),1,1,0,c_white,0.25)	
			draw_sprite_ext(sprite_index,image_index,x-(0.86*hspd),y-(0.86*vspd),1,1,0,c_white,0.225)
			draw_sprite_ext(sprite_index,image_index,x-(0.93*hspd),y-(0.93*vspd),1,1,0,c_white,0.2)	
			draw_sprite_ext(sprite_index,image_index,x-(1*hspd),y-(1*vspd),1,1,0,c_white,0.175)
			draw_sprite_ext(sprite_index,image_index,x-(1.07*hspd),y-(1.07*vspd),1,1,0,c_white,0.15)	
			draw_sprite_ext(sprite_index,image_index,x-(1.14*hspd),y-(1.14*vspd),1,1,0,c_white,0.125)
			draw_sprite_ext(sprite_index,image_index,x-(1.22*hspd),y-(1.22*vspd),1,1,0,c_white,0.1)	
			draw_sprite_ext(sprite_index,image_index,x-(1.29*hspd),y-(1.29*vspd),1,1,0,c_white,0.075)	
			draw_sprite_ext(sprite_index,image_index,x-(1.36*hspd),y-(1.36*vspd),1,1,0,c_white,0.05)	
			draw_sprite_ext(sprite_index,image_index,x-(1.43*hspd),y-(1.43*vspd),1,1,0,c_white,0.025)	
		}


		draw_self()	
	}
}

//bullet side1
if (instance_exists(obj_bullet_side1))
{
	with(obj_bullet_side1)
	{
		if (global.beam_shield_available = 1) && (hitnow3 <= 0)
		{
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x,y,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd,y-vspd,1,1,0,c_white,0.65)
	
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd-6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd-6,1,1,0,c_white,0.65)
	
			if (subimage >= 1)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)-6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)-6,1,1,0,c_white,0.5)
			}
	
			if (subimage >= 2)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)-6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)-6,1,1,0,c_white,0.45)
			}
			
			if (subimage >= 3)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)-6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)-6,1,1,0,c_white,0.35)
			}
		}

		//if charged shot
		if (charge == 1)
		{
			draw_sprite_ext(sprite_index,image_index,x-(0.11*hspd),y-(0.11*vspd),1,1,0,c_white,0.5)	
			draw_sprite_ext(sprite_index,image_index,x-(0.18*hspd),y-(0.18*vspd),1,1,0,c_white,0.475)	
			draw_sprite_ext(sprite_index,image_index,x-(0.25*hspd),y-(0.25*vspd),1,1,0,c_white,0.45)
			draw_sprite_ext(sprite_index,image_index,x-(0.32*hspd),y-(0.32*vspd),1,1,0,c_white,0.425)	
			draw_sprite_ext(sprite_index,image_index,x-(0.39*hspd),y-(0.39*vspd),1,1,0,c_white,0.4)	
			draw_sprite_ext(sprite_index,image_index,x-(0.46*hspd),y-(0.46*vspd),1,1,0,c_white,0.375)	
			draw_sprite_ext(sprite_index,image_index,x-(0.53*hspd),y-(0.53*vspd),1,1,0,c_white,0.35)	
			draw_sprite_ext(sprite_index,image_index,x-(0.6*hspd),y-(0.6*vspd),1,1,0,c_white,0.325)	
			draw_sprite_ext(sprite_index,image_index,x-(0.67*hspd),y-(0.67*vspd),1,1,0,c_white,0.3)	
			draw_sprite_ext(sprite_index,image_index,x-(0.72*hspd),y-(0.72*vspd),1,1,0,c_white,0.275)	
			draw_sprite_ext(sprite_index,image_index,x-(0.79*hspd),y-(0.79*vspd),1,1,0,c_white,0.25)	
			draw_sprite_ext(sprite_index,image_index,x-(0.86*hspd),y-(0.86*vspd),1,1,0,c_white,0.225)
			draw_sprite_ext(sprite_index,image_index,x-(0.93*hspd),y-(0.93*vspd),1,1,0,c_white,0.2)	
			draw_sprite_ext(sprite_index,image_index,x-(1*hspd),y-(1*vspd),1,1,0,c_white,0.175)
			draw_sprite_ext(sprite_index,image_index,x-(1.07*hspd),y-(1.07*vspd),1,1,0,c_white,0.15)	
			draw_sprite_ext(sprite_index,image_index,x-(1.14*hspd),y-(1.14*vspd),1,1,0,c_white,0.125)
			draw_sprite_ext(sprite_index,image_index,x-(1.22*hspd),y-(1.22*vspd),1,1,0,c_white,0.1)	
			draw_sprite_ext(sprite_index,image_index,x-(1.29*hspd),y-(1.29*vspd),1,1,0,c_white,0.075)	
			draw_sprite_ext(sprite_index,image_index,x-(1.36*hspd),y-(1.36*vspd),1,1,0,c_white,0.05)	
			draw_sprite_ext(sprite_index,image_index,x-(1.43*hspd),y-(1.43*vspd),1,1,0,c_white,0.025)	
		}

		draw_self()	
	}
}

//bullet side2
if (instance_exists(obj_bullet_side2))
{
	with(obj_bullet_side2)
	{
		if (global.beam_shield_available = 1) && (hitnow3 <= 0)
		{
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x,y,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd,y-vspd,1,1,0,c_white,0.65)
	
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd+6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd+4,y-vspd-6,1,1,0,c_white,0.65)
			draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-hspd-4,y-vspd-6,1,1,0,c_white,0.65)
	
			if (subimage >= 1)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)+6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)+4,y-(2*vspd)-6,1,1,0,c_white,0.5)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(2*hspd)-4,y-(2*vspd)-6,1,1,0,c_white,0.5)
			}
	
			if (subimage >= 2)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)+6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)+4,y-(3*vspd)-6,1,1,0,c_white,0.45)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(3*hspd)-4,y-(3*vspd)-6,1,1,0,c_white,0.45)
			}
			
			if (subimage >= 3)
			{
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)+6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)+4,y-(4*vspd)-6,1,1,0,c_white,0.35)
				draw_sprite_ext(spr_SHIELD_shieldeffect,subimage,x-(4*hspd)-4,y-(4*vspd)-6,1,1,0,c_white,0.35)
			}
		}

		//if charged shot
		if (charge == 1)
		{
			draw_sprite_ext(sprite_index,image_index,x-(0.11*hspd),y-(0.11*vspd),1,1,0,c_white,0.5)	
			draw_sprite_ext(sprite_index,image_index,x-(0.18*hspd),y-(0.18*vspd),1,1,0,c_white,0.475)	
			draw_sprite_ext(sprite_index,image_index,x-(0.25*hspd),y-(0.25*vspd),1,1,0,c_white,0.45)
			draw_sprite_ext(sprite_index,image_index,x-(0.32*hspd),y-(0.32*vspd),1,1,0,c_white,0.425)	
			draw_sprite_ext(sprite_index,image_index,x-(0.39*hspd),y-(0.39*vspd),1,1,0,c_white,0.4)	
			draw_sprite_ext(sprite_index,image_index,x-(0.46*hspd),y-(0.46*vspd),1,1,0,c_white,0.375)	
			draw_sprite_ext(sprite_index,image_index,x-(0.53*hspd),y-(0.53*vspd),1,1,0,c_white,0.35)	
			draw_sprite_ext(sprite_index,image_index,x-(0.6*hspd),y-(0.6*vspd),1,1,0,c_white,0.325)	
			draw_sprite_ext(sprite_index,image_index,x-(0.67*hspd),y-(0.67*vspd),1,1,0,c_white,0.3)	
			draw_sprite_ext(sprite_index,image_index,x-(0.72*hspd),y-(0.72*vspd),1,1,0,c_white,0.275)	
			draw_sprite_ext(sprite_index,image_index,x-(0.79*hspd),y-(0.79*vspd),1,1,0,c_white,0.25)	
			draw_sprite_ext(sprite_index,image_index,x-(0.86*hspd),y-(0.86*vspd),1,1,0,c_white,0.225)
			draw_sprite_ext(sprite_index,image_index,x-(0.93*hspd),y-(0.93*vspd),1,1,0,c_white,0.2)	
			draw_sprite_ext(sprite_index,image_index,x-(1*hspd),y-(1*vspd),1,1,0,c_white,0.175)
			draw_sprite_ext(sprite_index,image_index,x-(1.07*hspd),y-(1.07*vspd),1,1,0,c_white,0.15)	
			draw_sprite_ext(sprite_index,image_index,x-(1.14*hspd),y-(1.14*vspd),1,1,0,c_white,0.125)
			draw_sprite_ext(sprite_index,image_index,x-(1.22*hspd),y-(1.22*vspd),1,1,0,c_white,0.1)	
			draw_sprite_ext(sprite_index,image_index,x-(1.29*hspd),y-(1.29*vspd),1,1,0,c_white,0.075)	
			draw_sprite_ext(sprite_index,image_index,x-(1.36*hspd),y-(1.36*vspd),1,1,0,c_white,0.05)	
			draw_sprite_ext(sprite_index,image_index,x-(1.43*hspd),y-(1.43*vspd),1,1,0,c_white,0.025)	
		}

		draw_self()	
	}
}