/// @description Insert description here
// You can write your code in this editor
switch2 = 0;
n = 0;
n2 = 0;
n3 = 0;
nRedblocker = 0;
nability = 0;
nmarker = 0;
n_instmarker = 0

timer1 = 0;

surface = -1;

















/*
//check to see if there's already a save file
if (file_exists("Save.sav"))
{
	file_delete("Save.sav");
}
//make a record the important stuff for saving
var SaveFile = file_text_open_write("Save.sav");
var Savedroom = room;

//write the data to the save text file
file_text_write_real(SaveFile,Savedroom);
file_text_write_real(SaveFile,global.health1);
file_text_write_real(SaveFile,global.upgrade_health);
file_text_write_real(SaveFile,global.upgrade_charge);
file_text_write_real(SaveFile,global.beam_spread_available);
file_text_write_real(SaveFile,global.screwjump);
file_text_write_real(SaveFile,global.spacejump);


file_text_close(SaveFile);