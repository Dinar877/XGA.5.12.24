function abilities() {
	
	//get current abilities available
	var invisSwitch = 0;
	var nanoSwitch = 0;
	var nuclSwitch = 0;
	var shocSwitch = 0;
	
	if (instance_exists(obj_ability_invisibility))
	{
		if (obj_ability_invisibility.active == 1)
		{
			invisSwitch = 1;
		}
		else invisSwitch = 0;
	}
	if (instance_exists(obj_ability_shockwave))
	{
		if (obj_ability_shockwave.active == 1)
		{
			shocSwitch = 1;
		}
		else shocSwitch = 0;
	}
	if (instance_exists(obj_ability_nanoshield))
	{
		if (obj_ability_nanoshield.active == 1)
		{
			nanoSwitch = 1;
		}
		else nanoSwitch = 0;
	}
	if (instance_exists(obj_ability_nuclearblast))
	{
		if (obj_ability_nuclearblast.active == 1)
		{
			nuclSwitch = 1;
		}
		else nuclSwitch = 0;
	}
	
	abilities_available = nuclSwitch + nanoSwitch + invisSwitch + shocSwitch;
	
	//get the right positions for each ability icon
	if (abilities_available > 0)
	{
		if (abilities_available == 1) //if only one ability icon exists
		{
			if (invisSwitch)
			{
				obj_ability_invisibility.abilitylimitID = 1;
			}
			else if (shocSwitch)
			{
				obj_ability_shockwave.abilitylimitID = 1;
			}
			else if (nuclSwitch)
			{
				obj_ability_nuclearblast.abilitylimitID = 1;
			}
			else if (nanoSwitch)
			{
				obj_ability_nanoshield.abilitylimitID = 1;
			}
		}
		else if (abilities_available == 2) //if 2 ability icon exists
		{
			//invisibility
			if (invisSwitch)
			{
				obj_ability_invisibility.abilitylimitID = 1;
				if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
				}
			}
			else if (nanoSwitch)
			{
				obj_ability_nanoshield.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
				}
			}
			else if (nuclSwitch)
			{
				obj_ability_nuclearblast.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
				}
				else if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
				}
			}
			else if (shocSwitch)
			{
				obj_ability_shockwave.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
				}
				else if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
				}
			}
		}
		else if (abilities_available == 3) //if 3 ability icon exists
		{
			//invisibility
			if (invisSwitch)
			{
				obj_ability_invisibility.abilitylimitID = 1;
				if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
					if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
					if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
					if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
				}
			}
			else if (nanoSwitch)
			{
				obj_ability_nanoshield.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
					if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
				}
			}
			else if (nuclSwitch)
			{
				obj_ability_nuclearblast.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
					if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (shocSwitch)
					{
						obj_ability_shockwave.abilitylimitID = 3;
					}
				}
				else if (shocSwitch)
				{
					obj_ability_shockwave.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
				}
			}
			else if (shocSwitch)
			{
				obj_ability_shockwave.abilitylimitID = 1;
				if (invisSwitch)
				{
					obj_ability_invisibility.abilitylimitID = 2;
					if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
				}
				else if (nanoSwitch)
				{
					obj_ability_nanoshield.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (nuclSwitch)
					{
						obj_ability_nuclearblast.abilitylimitID = 3;
					}
				}
				else if (nuclSwitch)
				{
					obj_ability_nuclearblast.abilitylimitID = 2;
					if (invisSwitch)
					{
						obj_ability_invisibility.abilitylimitID = 3;
					}
					else if (nanoSwitch)
					{
						obj_ability_nanoshield.abilitylimitID = 3;
					}
				}
			}
		}
		else if (abilities_available == 4) //if 4 ability icon exists
		{
			obj_ability_invisibility.abilitylimitID = 1;
			obj_ability_nanoshield.abilitylimitID = 2;
			obj_ability_nuclearblast.abilitylimitID = 3;
			obj_ability_shockwave.abilitylimitID = 4;
		}
	}
	
	if (R2) && (global.ability_select < abilities_available)
	{
		global.ability_select += 1;	
		exit;
	}
	else if (R2) && (global.ability_select >= abilities_available)
	{
		global.ability_select = 0;	
		exit;
	}
	else if (L2) && (global.ability_select > 0)
	{
		global.ability_select -= 1;	
		exit;
	}
	else if (L2) && (global.ability_select <= 0)
	{
		global.ability_select = abilities_available;	
		exit;
	}


}
