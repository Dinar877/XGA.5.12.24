/// @description Insert description here
// You can write your code in this editor
if (((place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (place_meeting(id.x-16,id.y,obj_chargeplug_cable)))
 or ((place_meeting(id.x+16,id.y,obj_chargeplug_left)) or (place_meeting(id.x-16,id.y,obj_chargeplug_left)))
 or ((place_meeting(id.x-16,id.y,obj_chargeplug_right)) or (place_meeting(id.x+16,id.y,obj_chargeplug_right)))
  or ((place_meeting(id.x-16,id.y,obj_chargeplug_switch)) or (place_meeting(id.x+16,id.y,obj_chargeplug_switch))))
&& (!place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (!place_meeting(id.x,id.y-16,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_horizontal_notactive
}
else if (((place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (place_meeting(id.x,id.y-16,obj_chargeplug_cable)))
 or ((place_meeting(id.x,id.y+16,obj_chargeplug_left)) or (place_meeting(id.x,id.y-16,obj_chargeplug_left)))
 or ((place_meeting(id.x,id.y+16,obj_chargeplug_right)) or (place_meeting(id.x,id.y-16,obj_chargeplug_right)))
  or ((place_meeting(id.x,id.y+16,obj_chargeplug_switch)) or (place_meeting(id.x,id.y-16,obj_chargeplug_switch))))
 && (!place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (!place_meeting(id.x-16,id.y,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_vertical_notactive
}
else if (!place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (place_meeting(id.x-16,id.y,obj_chargeplug_cable)) //UR
&& (place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (!place_meeting(id.x,id.y-16,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_cornerUR_notactive
}
else if (place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (!place_meeting(id.x-16,id.y,obj_chargeplug_cable)) //UL
&& (place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (!place_meeting(id.x,id.y-16,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_cornerUL_notactive
}
else if (!place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (place_meeting(id.x-16,id.y,obj_chargeplug_cable)) //DR
&& (!place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (place_meeting(id.x,id.y-16,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_cornerDR_notactive
}
else if (place_meeting(id.x+16,id.y,obj_chargeplug_cable)) && (!place_meeting(id.x-16,id.y,obj_chargeplug_cable)) //DL
&& (!place_meeting(id.x,id.y+16,obj_chargeplug_cable)) && (place_meeting(id.x,id.y-16,obj_chargeplug_cable))
{
	sprite_index = spr_chargecable_cornerDL_notactive
}

active = 0
redblockerID = 0