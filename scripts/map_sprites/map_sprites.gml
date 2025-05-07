///Blockers!!!
function map_sprites() {
	
			 //reblocker-yellow
			 if (instance_place(x,y,obj_door_redblocker))
			 {
				var inst_blocky = (instance_place(x,y,obj_door_redblocker))
			
				//red
				if (inst_blocky.sprite_index = spr_doorstopper_left_original) && (inst_blocky.door_type = 0)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_yellow_right
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original) && (inst_blocky.door_type = 0)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_yellow_left
						blockerID2 = other.blockerID2
					}
				}
				//blue
				else if (inst_blocky.sprite_index = spr_doorstopper_left_original) && (inst_blocky.door_type = 1)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_blueright
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original) && (inst_blocky.door_type = 1)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_blueleft
						blockerID2 = other.blockerID2
					}
				}
				//purple
				else if (inst_blocky.sprite_index = spr_doorstopper_left_original) && (inst_blocky.door_type = 2)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_greyleft
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original) && (inst_blocky.door_type = 2)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_greyright
						blockerID2 = other.blockerID2
					}
				}
			
				//green
				else if (inst_blocky.sprite_index = spr_doorstopper_left_original) && (inst_blocky.door_type = 3)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_green_right
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original) && (inst_blocky.door_type = 3)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_green_left
						blockerID2 = other.blockerID2
					}
				}
			
				//grey
				else if (inst_blocky.sprite_index = spr_doorstopper_left_original) && (inst_blocky.door_type = 4)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_redleft
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original) && (inst_blocky.door_type = 4)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_redright
						blockerID2 = other.blockerID2
					}
				}
			
			
			 }
			 
			 //spread shot blocker
			 if (instance_place(x,y,obj_door_spreadblocker))
			 {
				var inst_blocky = (instance_place(x,y,obj_door_spreadblocker))
				
				if (inst_blocky.sprite_index = spr_doorstopper_left_original_s)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_purpleright
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original_s)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_purpleleft
						blockerID2 = other.blockerID2
					}
				}
				
			 }
			 
			 //shield blocker
			 if (instance_place(x,y,obj_door_shieldblocker))
			 {
				var inst_blocky = (instance_place(x,y,obj_door_shieldblocker))
				
				if (inst_blocky.sprite_index = spr_doorstopper_left_original_shield)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_greyleft
						blockerID2 = other.blockerID2
					}
				}
				else if (inst_blocky.sprite_index = spr_doorstopper_right_original_shield)
				{
					blockerID2 = inst_blocky.redblockerID
					with(inst_maptile)
					{
						blockerID = MapTiles_groupDoor_greyright
						blockerID2 = other.blockerID2
					}
				}
				
			 }
			 
			 
			 
			 
			 
			 
		 
		 
		 
			 //items
			 if (instance_place(x,y,obj_item_link))
			 {
				inst_item = (instance_place(x,y,obj_item_link))
				upgradeID2 = inst_item.upgradeID
			
				with(inst_maptile)
					{
						upgradeID = spr_itemlocated
						upgradeID2 = other.upgradeID2
					}
			 }
		 
			 //hazards
			 if (instance_place(x,y,obj_harmful_electricity_ud_nano)) or (instance_place(x,y,obj_harmful_electricity_lr_nano))
			 {
				if (instance_place(x,y,obj_harmful_electricity_ud_nano))
				{
					hazardID = (instance_place(x,y,obj_harmful_electricity_ud_nano))
				}
				else if (instance_place(x,y,obj_harmful_electricity_lr_nano))
				{
					hazardID = (instance_place(x,y,obj_harmful_electricity_lr_nano))
				}
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_nanoshield
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_invisibility_lock))
			 {
				hazardID = (instance_place(x,y,obj_invisibility_lock))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_invisibility_door
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_superautohack_lock))
			 {
				hazardID = (instance_place(x,y,obj_superautohack_lock))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_superautohack
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_supernuclearblast_door))
			 {
				hazardID = (instance_place(x,y,obj_supernuclearblast_door))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_supernuclearblast
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_breakable_crystal)) or (instance_place(x,y,obj_breakable_crystal2))
			 {
				if (instance_place(x,y,obj_breakable_crystal))
				{
					hazardID = (instance_place(x,y,obj_breakable_crystal))
				}
				else if (instance_place(x,y,obj_breakable_crystal2))
				{
					hazardID = (instance_place(x,y,obj_breakable_crystal2))
				}
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{	
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_nuclearblast
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_corelock_switch))
			 {
				hazardID = (instance_place(x,y,obj_corelock_switch))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_corelock_door
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_autohack_lock)) //autohack lock
			 {
				hazardID = (instance_place(x,y,obj_autohack_lock))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_autohack
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_superautohack_lock)) //super autohack lock
			 {
				hazardID = (instance_place(x,y,obj_superautohack_lock))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_superautohack
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_chargeplug_left)) //charge plug left
			 {
				hazardID = (instance_place(x,y,obj_chargeplug_left))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_plug
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_chargeplug_right)) //charge plug right
			 {
				hazardID = (instance_place(x,y,obj_chargeplug_right))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_plug
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_vinedoor)) //vine charge shot UD
			 {
				hazardID = (instance_place(x,y,obj_vinedoor))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_vine
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }
			 else if (instance_place(x,y,obj_vinedoor_sideways)) //vine charge shot LR
			 {
				hazardID = (instance_place(x,y,obj_vinedoor_sideways))
			
				with(hazardID)
				{
					if (global.doors_redblocker[redblockerID] == 0)
					{
						with(other.inst_maptile)
						{
							hazardID = inst_mapchecker1.hazardID
							hazardID2 = MapTiles_vine
							hazardID_redblockerID = other.redblockerID
						}
					}
				}
			 }


}
