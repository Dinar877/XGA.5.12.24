// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wm_sectornames(){
	
	if (global.sector_active = WMdiscovered.mainsector)
	{
		message4 = " MAIN SECTOR"
	}
	else if (global.sector_active = WMdiscovered.s1)
	{
		message4 = "   SECTOR 1"
	}
	else if (global.sector_active = WMdiscovered.s2)
	{
		message4 = "   SECTOR 2"
	}
	else if (global.sector_active = WMdiscovered.s3)
	{
		message4 = "   SECTOR 3"
	}
	else if (global.sector_active = WMdiscovered.s4)
	{
		message4 = "   SECTOR 4"
	}
	else if (global.sector_active = WMdiscovered.t)
	{
		message4 = "HIDDEN TEMPLE"
	}
	else if (global.sector_active = WMdiscovered.v)
	{
		message4 = "  THE VAULT"
	}
	else if (global.sector_active = WMdiscovered.sc)
	{
		message4 = " SYSTEM CORE"
	}
	else if (global.sector_active = WMdiscovered.ms)
	{
		message4 = " MOTHERSHIP"
	}
	else message4 = "    ???"
	
	
	
	tex2 = instance_create_depth(x+122,y+5,self.depth-1,obj_texty_heading);

	with(tex2)
	{
		text = other.message4;
		spd = other.spd;
		font = font_regular1;
	
		text_length = string_length(text)
		font_size = font_get_size(font)
	
		draw_set_font(font);
	
		text_width = string_width_ext(text,font_size+(font_size/2),280);
		text_height = string_height_ext(text,font_size+(font_size/2),30);
	}
	
	

}