/// @description Insert description here
// You can write your code in this editor
maptilex = 0;
maptiley = 0;

global.mapgrid_tilex = 0;
global.mapgrid_tiley = 0;
//checks which room square you're talking about
global.checkmapx = 0;
global.checkmapy = 0;
//the origins of the area map (not the map of the room you're in)
global.mapgrid_startx = 0;
global.mapgrid_starty = 0;
//checks the player's position on the overall map, measured in units of the room squares
global.mapgrid_playerx = 0;
global.mapgrid_playery = 0;

//script that checks how many room squares are inside the current room
script_execute(map_init2);
/*

i = 0;
ii = 0;
tiledata = 0;
tilelocation= 0;
tileEmpty = 0;