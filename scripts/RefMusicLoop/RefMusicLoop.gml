// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RefMusicLoop(){
	//decide based on global.sector_music what the loop points should be
	
	//BOSSES
	if (global.sector_music = ost_boss_0_remastered)
	{
		Music_loop(ost_boss_0_remastered, 0.101, 219.653);
	}
	else if (global.sector_music = ost_boss_1_remastered)
	{
		Music_loop(ost_boss_1_remastered, 0, 0);
	}
	else if (global.sector_music = ost_boss_2_remastered)
	{
		Music_loop(ost_boss_2_remastered, 0.113, 90.098);
	}
	else if (global.sector_music = ost_boss_3_remastered)
	{
		Music_loop(ost_boss_3_remastered, 0.074, 109.82)
	}
	else if (global.sector_music = ost_boss_4_remastered)
	{
		Music_loop(ost_boss_4_remastered, 0.086, 145.586)
	}
	else if (global.sector_music = ost_dark_remastered)
	{
		Music_loop(ost_dark_remastered, 0.123, 90.46);	
	}
	
	
	//SECTORS
	if (global.sector_music = ost_investigation_remastered) //MAIN SECTOR
	{
		Music_loop(ost_investigation_remastered, 0.114, 109.879);	
	}
	else if (global.sector_music = ost_peaceful_loop_remastered) // MAIN SECTOR
	{
		Music_loop(ost_peaceful_loop_remastered, 0.114, 57.759);	
	}
	
	if (global.sector_music = ost_sector1_remastered) // SECTOR 1
	{
		Music_loop(ost_sector1_remastered, 2.107,146.112);	
	}
	else if (global.sector_music = ost_sector1_cave_remastered) // SECTOR 1 CAVES
	{
		Music_loop(ost_sector1_cave_remastered, 0, 82.74);	
	}
	else if (global.sector_music = ost_ice_sfx_remastered) // SECTOR 1 CORRUPTED
	{
		Music_loop(ost_ice_sfx_remastered, 0, 0);	
	}
	
	if (global.sector_music = ost_sector2_remastered) // SECTOR 2
	{
		Music_loop(ost_sector2_remastered, 0.106,184.101);	
	}
	else if (global.sector_music = ost_sector2_cor_remastered) // SECTOR 2 CORRUPTED
	{
		Music_loop(ost_sector2_cor_remastered, 0, 0);	
	}
	
	if (global.sector_music = ost_sector3_remastered) // SECTOR 3
	{
		Music_loop(ost_sector3_remastered, 0.111,129.887);	
	}
	else if (global.sector_music = ost_sector3_lava_remastered) // SECTOR 3 CORRUPTED
	{
		Music_loop(ost_sector3_lava_remastered, 0,53.342);	
	}
	
	if (global.sector_music = ost_sector4_remastered) // SECTOR 4
	{
		Music_loop(ost_sector4_remastered, 0.087,195.683);	
	}
	else if (global.sector_music = ost_sector4_cor_remastered) // SECTOR 4 TEMPLE
	{
		Music_loop(ost_sector4_cor_remastered, 0.114,120.11);	
	}
	else if (global.sector_music = ost_sector4_sand_remastered) // SECTOR 4 CORRUPTED
	{
		Music_loop(ost_sector4_sand_remastered, 0, 0);	
	}
	

}