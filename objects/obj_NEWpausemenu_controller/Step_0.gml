/// @description Insert description here
// You can write your code in this editor
scr_gamepad_test() 
Gamepad_variables()

if (spawn = 0)
{
	spawn = 1
	
	//BEAM UPGRADES
	#region
	tex1 = instance_create_depth(x,y,id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " BEAM UPGRADES";
		}
	
	
	if (global.upgradecollected[upgrades.chargeshot] > 0)
	{
		//charge
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " CHARGE SHOT";
			charge = 1
		
			if (global.upgrade_charge > 0) && (charge = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.spreadshot] > 0)
	{
		//spread
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " SPREAD SHOT";
			spread = 1
		
			if (global.beam_spread_available > 0) && (spread = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}	
		counter++
	}
	
	if (global.upgradecollected[upgrades.impactshot] > 0)
	{
		//BURN
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);

		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " IMPACT SHOT";
			burn = 1
		
			if (global.beam_burn_available > 0) && (burn = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.reflectshot] > 0)
	{
		//REFLECT
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);

		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " REFLECT SHOT";
			reflect = 1
		
			if (global.beam_homing_available > 0) && (reflect = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.shieldshot] > 0)
	{
		//SHIELD
		global.tex[0+counter] = instance_create_depth(x,y+24+(24*counter),id.depth-1,obj_textblock_generic);

		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " SHIELD SHOT";
			shield = 1
		
			if (global.beam_shield_available > 0) && (shield = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	#endregion
	
	//SUIT UPGRADES
	#region
	
	tex1 = instance_create_depth(x,y+168,id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " ENGINES";
		}
		
	if (global.upgradecollected[upgrades.dashengine] > 0)
	{
		//charge
		global.tex[0+counter] = instance_create_depth(x,y+168+(24*1),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " DASH ENGINE";
			suit_dash = 1
			selected = 0
		
			if (global.suit_pure > 0) && (suit_dash = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.voltengine] > 0)
	{
		//charge
		global.tex[0+counter] = instance_create_depth(x,y+168+(24*2),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " VOLT ENGINE";
			suit_shock = 1
			selected = 0
		
			if (global.suit_shock > 0) && (suit_shock = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
		
	#endregion
	
	//MISC. UPGRADES
	#region
	
	tex1 = instance_create_depth(x,y+262,id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " MISC. UPGRADES";
		}
		
	if (global.upgradecollected[upgrades.wallscaler] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*1),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " WALL SCALER";
			wallscaler = 1
			selected = 0
		
			if (global.wallscaler > 0) && (wallscaler = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.heatBalancer] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*2),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " HEAT BALANCER";
			kelvin = 1
			selected = 0
		
			if (global.kelvin > 0) && (kelvin = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.xVision] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*3),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " X VISION";
			xvision = 1
			selected = 0
		
			if (global.xvision > 0) && (xvision = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	
	
	if (global.upgradecollected[upgrades.hydrodash] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*4),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " HYDRODASH";
			hydrodash = 1
			selected = 0
		
			if (global.hydrodash > 0) && (hydrodash = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.jetjump] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*5),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " JET JUMP";
			spacejump = 1
			selected = 0
		
			if (global.spacejump > 0) && (spacejump = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.instacharge] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+262+(24*6),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " INSTA CHARGE";
			instacharge = 1
			selected = 0
		
			if (global.shoot_instacharge_upgrade > 0) && (instacharge = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	

		
	#endregion
	
	//ABILITIES
	#region
	tex1 = instance_create_depth(x,y+430+(24*1),id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " ABILITIES";
		}
		
	if (global.upgradecollected[upgrades.nanoshield] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*2),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			if (global.nanoshield_state = 0)
			{
				text = " NANO SHIELD";
			}
			else if (global.nanoshield_state > 0)
			{
				text = " S.NANO SHIELD";
			}
			
			is_upgrade = 1
			nanoshield = 1
			selected = 0
		
			if (global.nanoshield_available > 0) && (nanoshield = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.invisibility] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*3),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			if (global.invisibility_state = 0)
			{
				text = " INVISIBILITY";
			}
			else if (global.invisibility_state > 0)
			{
				text = " S.INVISIBILITY";
			}
			
			is_upgrade = 1
			invisibility = 1
			selected = 0
		
			if (global.invisibility_available > 0) && (invisibility = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	if (global.upgradecollected[upgrades.nuclearblast] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*4),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			if (global.nuclearblast_state = 0)
			{
				text = " NUCLEAR BLAST";
			}
			else if (global.nuclearblast_state > 0)
			{
				text = " S.NUCLEAR BLAST";
			}
			
			is_upgrade = 1
			nuclearblast = 1
			selected = 0
		
			if (global.nuclearblast_available > 0) && (nuclearblast = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	
	if (global.upgradecollected[upgrades.shockwave] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*5),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			if (global.shockwave_state = 0)
			{
				text = " SHOCK WAVE";
			}
			else if (global.shockwave_state > 0)
			{
				text = " S.SHOCK WAVE";
			}
			
			is_upgrade = 1
			shockwave = 1
			selected = 0
		
			if (global.shockwave_available > 0) && (shockwave = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	#endregion
	
	//SWORD
	#region
	tex1 = instance_create_depth(x,y+430+(24*7),id.depth-1,obj_textblock_heading);
	with(tex1)
		{
			text = " SWORD";
		}
		
	//NORMAL SWORD
	if (global.upgradecollected[upgrades.xsaber] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*8),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " X SABER";
			sword = 1
			selected = 0
		
			if (global.sword_available > 0) && (sword = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	
	//SWORD SWING
	if (global.upgradecollected[upgrades.xswing] > 0)
	{
		//wallscaler
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*9),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " X SWING";
			sword_swing = 1
			selected = 0
		
			if (global.sword_swing_available > 0) && (sword_swing = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	//SWORD Wave
	if (global.upgradecollected[upgrades.xwave] > 0)
	{
		global.tex[0+counter] = instance_create_depth(x,y+430+(24*10),id.depth-1,obj_textblock_generic);
		with(global.tex[0+counter])
		{
			is_upgrade = 1
			text = " X WAVE";
			sword_wave = 1
			selected = 0
		
			if (global.sword_wave_available > 0) && (sword_wave = 1)
			{
				on = 1
				sprite_index = spr_newpausescrn_options_block_on
			}
		}
		counter++
	}
	
	#endregion
	
	if (global.tex[0] > 0)
	{		
		with(global.tex[0])
		{
			selected = 1	
		}
		
		moveamount = y-global.tex[0].y+24
		
		with(obj_textblock_heading)
		{
			y += other.moveamount
			y1 = y
		}
		with(obj_textblock_generic)
		{
			y += other.moveamount
			y1 = y
		}
		
		tex1 = instance_create_depth(x-18,global.tex[0].y,id.depth-1,obj_textselector_arrow_generic);
	}
}


var menu_move = down_key_pressed-up_key_pressed;
if (gamepad4_wait < 1)
{
	gamepad4_wait += 0.1
}

if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < array_length(global.tex)-1)
&& (menu_move != 0) && (!gamepad_is_connected(correct_slot))
{
	menu_index_item += menu_move
}
else if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < array_length(global.tex)-1)
&& (menu_move != 0) && (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
{
	menu_index_item += menu_move
	gamepad4_wait = 0
}




//menu controlling dogshite

if (delay < 1)
{
	delay += 0.05;	
	if (goy > 0)
	{
		obj_textselector_arrow_generic.y = lerp(obj_textselector_arrow_generic.y,goy.y,0.25)
	}
	
	//press down - moves everything up
	if (goyother > 0)
	{		
		if (goyid > 0)
		{
			with(obj_textblock_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_heading)
			{
				y = lerp(y,y1+ynew,0.25)
			}
		}
	}
	//press up - moves everything down
	else if (goyother < 0)
	{
		if (goyid > 0)
		{
			with(obj_textblock_generic)
			{
				y = lerp(y,y1+ynew,0.25)
			}
			with(obj_textblock_heading)
			{
				y = lerp(y,y1+ynew,0.25)
			}
		}
	}
}
else if (delay >= 1) && (counter > 1) && (instance_exists(global.tex[n]))
{
	goyother = 0;
	//at top
	if (up_key_pressed) && (n = 0) && (n < counter-1)
	{
		n = counter-1;
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		global.tex[0].selected = 0;
		delay = 0;
		
		goyother = 1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew = moveamount
		obj_textblock_heading.ynew = moveamount
		goyid = global.tex[n];
		
		exit;
	}
	else if (down_key_pressed) && (n = 0) && (n < counter-1)
	{
		global.tex[n].selected = 0;
		n++;
		counter_scroll++
		goy = global.tex[n];
		global.tex[n].selected = 1;
		global.tex[0].selected = 0;
		delay = 0;
		
		goyother = 1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew += moveamount
		obj_textblock_heading.ynew += moveamount
		goyid = global.tex[n];
		
		exit;
	}
	
	
	//at bottom
	if (down_key_pressed) && (n == counter-1)
	{
		global.tex[n].selected = 0;
		n = 0;
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[0].selected = 1;
		delay = 0;
		
		goyother = -1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew = 0
		obj_textblock_heading.ynew = 0
		goyid = global.tex[n];
		
		exit;
	}
	else if (up_key_pressed) && (n == counter-1)
	{
		global.tex[n].selected = 0;
		n--;
		counter_scroll--
		goy = global.tex[n];
		global.tex[n].selected = 1;
		delay = 0;
		
		goyother = -1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew += moveamount
		obj_textblock_heading.ynew += moveamount
		goyid = global.tex[n];
		
		exit;
	}

	//midway screen switch
	if (up_key_pressed) && (n < counter-1) && (n != 0)
	{
		global.tex[n].selected = 0;
		n--
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		//global.tex[0].selected = 0;
		delay = 0;

		goyother = -1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew += moveamount
		obj_textblock_heading.ynew += moveamount
		goyid = global.tex[n];
		
		exit;
	}
	else if (down_key_pressed) && (n < counter-1) && (n != 0)
	{
		global.tex[n].selected = 0;
		n++
		counter_scroll = 0
		goy = global.tex[n];
		global.tex[n].selected = 1;
		//global.tex[0].selected = 0;
		delay = 0;
		
		goyother = 1;
		moveamount = obj_textselector_arrow_generic.y-global.tex[n].y
		obj_textblock_generic.ynew += moveamount
		obj_textblock_heading.ynew += moveamount
		goyid = global.tex[n];
		
		exit;
	}

}