/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_regular1)

if (selected == 1)
{
	draw_self();
	draw_text_color(x+10,y+3,text,c_white,c_white,c_white,c_white,image_alpha)
	
	//resolutions and upgrades
	if (lead2resolution = 0) && (lead2controls = 0) && (lead2audio = 0) &&(lead2exitgame = 0) && (lead2exitmenu = 0) && (is_audio = 0) && (lead2goback = 0)
	{
		if (on == 0) 
		{
			draw_text_color(x+148,y+3,"OFF",c_white,c_white,c_white,c_white,image_alpha)
		}
		else if (on == 1)
		{
			draw_text_color(x+148,y+3,"ON",c_white,c_white,c_white,c_white,image_alpha)
		}
	}
}
else if (selected == 0)
{
	draw_self();
	draw_text_color(x+10,y+3,text,c_white,c_white,c_white,c_white,image_alpha)
	
	//resolutions and upgrades
	if (lead2resolution = 0) && (lead2controls = 0) && (lead2audio = 0) &&(lead2exitgame = 0) && (lead2exitmenu = 0) && (is_audio = 0) && (lead2goback = 0)
	{
		if (on == 0)
		{
			draw_text_color(x+148,y+3,"OFF",c_white,c_white,c_white,c_white,image_alpha)
		}
		else if (on == 1)
		{
			draw_text_color(x+148,y+3,"ON",c_white,c_white,c_white,c_white,image_alpha)
		}
	}
}

//UPGRADES
#region
//charge beam
if (charge > 0) && (on > 0)
{
	draw_sprite(spr_item_chargebeam,0,x+190,y+10)
}
else if (charge > 0) && (on <= 0)
{
	draw_sprite_ext(spr_item_chargebeam,0,x+190,y+10,1,1,0,c_white,0.5)
}

//spread beam
if (spread > 0) && (on > 0)
{
	draw_sprite(pr_spreadbeam,0,x+190,y+10)
}
else if (spread > 0) && (on <= 0)
{
	draw_sprite_ext(pr_spreadbeam,0,x+190,y+10,1,1,0,c_white,0.5)
}

//burn beam
if (burn > 0) && (on > 0)
{
	draw_sprite(spr_burnbeam_tank,0,x+190,y+10)
}
else if (burn > 0) && (on <= 0)
{
	draw_sprite_ext(spr_burnbeam_tank,0,x+190,y+10,1,1,0,c_white,0.5)
}

//reflect beam
if (reflect > 0) && (on > 0)
{
	draw_sprite(spr_homingbeam,0,x+190,y+10)
}
else if (reflect > 0) && (on <= 0)
{
	draw_sprite_ext(spr_homingbeam,0,x+190,y+10,1,1,0,c_white,0.5)
}

//shield beam
if (shield > 0) && (on > 0)
{
	draw_sprite(spr_shieldbeam,0,x+190,y+10)
}
else if (shield > 0) && (on <= 0)
{
	draw_sprite_ext(spr_shieldbeam,0,x+190,y+10,1,1,0,c_white,0.5)
}

//dash suit
if (suit_dash > 0) && (on > 0)
{
	draw_sprite(spr_PureSuit,0,x+190,y+10)
	shader_reset()
}
else if (suit_dash > 0) && (on <= 0)
{
	draw_sprite_ext(spr_PureSuit,0,x+190,y+10,1,1,0,c_white,0.5)
	shader_reset()
}

//dash suit
if (suit_shock > 0) && (on > 0)
{
	draw_sprite(spr_PureSuit_2,0,x+190,y+10)
	shader_reset()
}
else if (suit_shock > 0) && (on <= 0)
{
	draw_sprite_ext(spr_PureSuit_2,0,x+190,y+10,1,1,0,c_white,0.5)
	shader_reset()
}

//wall scaler
if (wallscaler > 0) && (on > 0)
{
	draw_sprite(spr_wallscaler,0,x+190,y+10)
}
else if (wallscaler > 0) && (on <= 0)
{
	draw_sprite_ext(spr_wallscaler,0,x+190,y+10,1,1,0,c_white,0.5)
}

//xvision
if (xvision > 0) && (on > 0)
{
	draw_sprite(spr_xvision,0,x+190,y+10)
}
else if (xvision > 0) && (on <= 0)
{
	draw_sprite_ext(spr_xvision,0,x+190,y+10,1,1,0,c_white,0.5)
}

//INSTA CHARGE
if (instacharge > 0) && (on > 0)
{
	draw_sprite(spr_instacharge,0,x+197,y+10)
}
else if (instacharge > 0) && (on <= 0)
{
	draw_sprite_ext(spr_instacharge,0,x+197,y+10,1,1,0,c_white,0.5)
}

//airdash
if (airdash > 0) && (on > 0)
{
	draw_sprite(spr_airdash,0,x+190,y+10)
}
else if (airdash > 0) && (on <= 0)
{
	draw_sprite_ext(spr_airdash,0,x+190,y+10,1,1,0,c_white,0.5)
}


//kelvin
if (kelvin > 0) && (on > 0)
{
	draw_sprite(spr_kelvin,0,x+190,y+10)
}
else if (kelvin > 0) && (on <= 0)
{
	draw_sprite_ext(spr_kelvin,0,x+190,y+10,1,1,0,c_white,0.5)
}

//hydrobooster
if (hydrodash > 0) && (on > 0)
{
	draw_sprite(spr_hydrodash,0,x+190,y+10)
}
else if (hydrodash > 0) && (on <= 0)
{
	draw_sprite_ext(spr_hydrodash,0,x+190,y+10,1,1,0,c_white,0.5)
}



//sword
if (sword > 0) && (on > 0)
{
	draw_sprite(spr_sword_upgrade,0,x+197,y+10)
}
else if (sword > 0) && (on <= 0)
{
	draw_sprite_ext(spr_sword_upgrade,0,x+197,y+10,1,1,0,c_white,0.5)
}

//sword swing
if (sword_swing > 0) && (on > 0)
{
	draw_sprite(spr_sword_swing_upgrade,0,x+197,y+10)
}
else if (sword_swing > 0) && (on <= 0)
{
	draw_sprite_ext(spr_sword_swing_upgrade,0,x+197,y+10,1,1,0,c_white,0.5)
}

//sword wave
if (sword_wave > 0) && (on > 0)
{
	draw_sprite(spr_sword_wave_upgrade,0,x+197,y+10)
}
else if (sword_wave > 0) && (on <= 0)
{
	draw_sprite_ext(spr_sword_wave_upgrade,0,x+197,y+10,1,1,0,c_white,0.5)
}



//screw jump
if (surgestrike > 0) && (on > 0)
{
	draw_sprite(spr_screwjump_item1,0,x+190,y+10)
}
else if (surgestrike > 0) && (on <= 0)
{
	draw_sprite_ext(spr_screwjump_item1,0,x+190,y+10,1,1,0,c_white,0.5)
}

//spacejump
if (spacejump > 0) && (on > 0)
{
	draw_sprite(spr_item_surgestrike,0,x+190,y+10)
}
else if (spacejump > 0) && (on <= 0)
{
	draw_sprite_ext(spr_item_surgestrike,0,x+190,y+10,1,1,0,c_white,0.5)
}

//autohack
if (autohack > 0) && (on > 0)
{
	draw_sprite(spr_autohack_tank,0,x+190,y+10)
}
else if (autohack > 0) && (on <= 0)
{
	draw_sprite_ext(spr_autohack_tank,0,x+190,y+10,1,1,0,c_white,0.5)
}

//SUPER autohack
if (Sautohack > 0) && (on > 0)
{
	draw_sprite(spr_superautohack_tank,0,x+190,y+10)
}
else if (Sautohack > 0) && (on <= 0)
{
	draw_sprite_ext(spr_superautohack_tank,0,x+190,y+10,1,1,0,c_white,0.5)
}


//nanoshield
if (global.nanoshield_state = 0)
{
	if (nanoshield > 0) && (on > 0)
	{
		draw_sprite(spr_item_nanoshield_extension,0,x+190,y+10)
	}
	else if (nanoshield > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_item_nanoshield_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
else if (global.nanoshield_state = 1)
{
	if (nanoshield > 0) && (on > 0)
	{
		draw_sprite(spr_super_item_nanoshield_extension,0,x+190,y+10)
	}
	else if (nanoshield > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_super_item_nanoshield_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
//invisibility
if (global.invisibility_state = 0)
{
	if (invisibility > 0) && (on > 0)
	{
		draw_sprite(spr_item_invisibility_extension,0,x+190,y+10)
	}
	else if (invisibility > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_item_invisibility_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
else if (global.invisibility_state = 1)
{
	if (invisibility > 0) && (on > 0)
	{
		draw_sprite(spr_super_item_invisibility_extension,0,x+190,y+10)
	}
	else if (invisibility > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_super_item_invisibility_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
//nuclearblast
if (global.nuclearblast_state = 0)
{
	if (nuclearblast > 0) && (on > 0)
	{
		draw_sprite(spr_item_nuclearblast_extension,0,x+190,y+10)
	}
	else if (nuclearblast > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_item_nuclearblast_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
else if (global.nuclearblast_state = 1)
{
	if (nuclearblast > 0) && (on > 0)
	{
		draw_sprite(spr_super_item_nuclearblast_extension,0,x+190,y+10)
	}
	else if (nuclearblast > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_super_item_nuclearblast_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
//shockwave
if (global.shockwave_state = 0)
{
	if (shockwave > 0) && (on > 0)
	{
		draw_sprite(spr_item_shockwave_extension,0,x+190,y+10)
	}
	else if (shockwave > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_item_shockwave_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
else if (global.shockwave_state = 1)
{
	if (shockwave > 0) && (on > 0)
	{
		draw_sprite(spr_super_item_shockwave_extension,0,x+190,y+10)
	}
	else if (shockwave > 0) && (on <= 0)
	{
		draw_sprite_ext(spr_super_item_shockwave_extension,0,x+190,y+10,1,1,0,c_white,0.5)
	}
}
#endregion


