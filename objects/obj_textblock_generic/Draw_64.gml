/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_regular1)

//UPGRADES DESCRIPTIONS
if (selected > 0)
{
	//BEAMS
	if (charge > 0)
	{
		new_input_description = " HOLD 'SHOOT' AND THEN UNLEASH A\n POWERFUL BLAST ONTO YOUR ENEMIES.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (spread > 0)
	{
		new_input_description = " FIRES 3 SHOTS AT ONCE\n INSTEAD OF JUST ONE SHOT.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	if (burn > 0)
	{
		new_input_description = " BULLETS ARE NOW EXPLOSIVE AND\n DEAL EXTREMELY HIGH DAMAGE TO EVERYTHING.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	if (reflect > 0)
	{
		new_input_description = " BULLETS NOW BOUNCE OFF WALLS AND SLOPES.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
	}

	if (shield > 0)
	{
		new_input_description = " BULLETS LEAVE AFTER IMAGES THAT\n DESTROY ENEMY PROJECTILES.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	//ENGINES
	if (suit_dash > 0)
	{
		new_input_description = " ALLOWS DASHING IN THE AIR IN ANY DIRECTION.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (suit_shock > 0)
	{
		new_input_description = " DASHES AND SPINJUMPS NOW DISINTENGRATE ENEMIES\n AND CAN POWER UP GENERATORS.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	
	//SWORD
	if (sword > 0)
	{
		new_input_description = " A POWERFUL SLASH COMBO THAT SLICES UP ENEMIES\n PRESS 'ABILITY' TO ATTACK. CAN ALSO USE IN AIR.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (sword_swing > 0)
	{
		new_input_description = " RUN + HOLD THE SWORD ATTACK TO KEEP\n SPINNING INTO ENEMIES. INVINCIBLE IN USE.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (sword_wave > 0)
	{
		new_input_description = " SWORD JUMP ATTACK NOW EMITS DANGEROUS\n ENERGY WAVES THAT DEAL HIGH DAMAGE.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	//MISC
	if (wallscaler > 0)
	{
		new_input_description = " NOW YOU CAN JUMP REPEATEDLY AGAINST WALLS TO\n CLIMB UP THEM.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (surgestrike > 0)
	{
		new_input_description = " JUMP INTO ENEMIES AND\n ANNIHILATE THEM IN ONE HIT.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (spacejump > 0)
	{
		new_input_description = " LETS YOU PERFORM AN EXTRA JUMP.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	if (xvision > 0)
	{
		new_input_description = " LIGHTS UP DARK AREAS SO YOU CAN\n NAVIGATE EASIER.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (instacharge > 0)
	{
		new_input_description = " FULLY REPLACES ALL NORMAL SHOTS WITH CHARGE SHOTS.\n NEEDS CHARGE SHOT UPGRADE.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}

	if (airdash > 0)
	{
		new_input_description = " DOUBLE JUMP IN ANY DIRECTION, USING\n THE 'TRIANGLE'/'X' BUTTON TO DASH.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)
	}

	if (kelvin > 0)
	{
		new_input_description = " PREVENTS DAMAGE FROM\n EXTREMELY HOT OR COLD ENVIRONMENTS.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
	}
	
	if (hydrodash > 0)
	{
		new_input_description = " ALLOWS FREE MOVEMENT IN WATER AND OTHER LIQUIDS.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
	}
	
	if (autohack > 0)
	{
		new_input_description = " HACKS OPEN GREEN-EYED GREY DOORS. ALSO TARGETS\n BLUE ROBOTIC ENEMIES AND WEAKENS THEIR DEFENSES.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (Sautohack > 0)
	{
		new_input_description = " MULTI-TARGETS BLUE ROBOTIC ENEMIES AND DESTROYS\n THEM. ALSO OPENS GREY-EYED METAL BARRIERS.";
		draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)	
	}
	
	if (global.nanoshield_state = 0)
	{
		if (nanoshield > 0)
		{
			new_input_description = " CAN PASS THROUGH GREEN ELECTRICITY GATES, AND\n PREVENTS DAMAGE.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	else if (global.nanoshield_state = 1)
	{
		if (nanoshield > 0)
		{
			new_input_description = " BLOCKS ALL DAMAGE, RESTORES HEALTH OVERTIME.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	
	if (global.invisibility_state = 0)
	{
		if (invisibility > 0)
		{
			new_input_description = " UNTIL YOU SHOOT, MAKES YOU UNDETECTABLE\n BY MOST ENEMIES.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	else if (global.invisibility_state = 1)
	{
		if (invisibility > 0)
		{
			new_input_description = " NOW YOU CAN FIRE BULLETS AND STAY\n INVISIBLE WITHOUT GETTING DETECTED.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	
	if (global.nuclearblast_state = 0)
	{
		if (nuclearblast> 0)
		{
			new_input_description = " ENGULFS THE AREA WITH MASSIVE EXPLOSIONS THAT\n CAN SHATTER ORANGE NUCLEAR CRYSTALS.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	else if (global.nuclearblast_state = 1)
	{
		if (nuclearblast> 0)
		{
			new_input_description = " NUCLEAR BLASTS NOW DEAL MORE DAMAGE\n AND CAN DESTROY PURPLE NUCLEAR CRYSTALS.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	
	if (global.shockwave_state = 0)
	{
		if (shockwave> 0)
		{
			new_input_description = " ELECTRICAL SHOCK WAVES THAT BLOCK BULLETS\n AND OPEN CERTAIN GREY DOORS.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
	else if (global.shockwave_state = 1)
	{
		if (shockwave> 0)
		{
			new_input_description = " S.SHOCK WAVES NOW OPEN EVEN MORE KINDS OF\n DOORS.";
			draw_text_color(10,156,new_input_description,c_white,c_white,c_white,c_white,image_alpha)		
		}
	}
}