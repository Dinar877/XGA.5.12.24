/// @description Insert description here
// You can write your code in this editor
//initialize everything
maptilex = 0;
maptiley = 0;
tileposx_checker = 0
tileposy_checker = 0
gotTile = 0;
discovered = 0;
room1 = room;

inst_maptile = -1;
inst_mapchecker1 = -1;
inst_blocky = -1;
inst_item = -1;

hazardID = -1
hazardID2 = -1
hazardID_redblockerID = 0
redblockerID = -1;

blockerID2 = -1
blockerID2 = -1;

upgradeID = -1
upgradeID2 = -1

switch_mapchecker2 = 0

door_type = -1;

global.mapgrid_tilex = 0;
global.mapgrid_tiley = 0;

//what this whole thing does is...
//1.make a mapdrawing object
//2.check the surrounding location and inside the 240x160 that's
//checking for other instances of itself and the door
//3.if there's any instances of itself next to it, then count where and how many.
//4.set sprite index of the map drawing object to whatever the results are.

