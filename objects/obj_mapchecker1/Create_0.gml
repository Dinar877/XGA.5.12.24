/// @description Insert description here
// You can write your code in this editor
//initialize everything
maptilex = 0;
maptiley = 0;
gotTile = 0;
discovered = 0;

inst_maptile = 0;


global.mapgrid_tilex = 0;
global.mapgrid_tiley = 0;

//what this whole thing does is...
//1.make a mapdrawing object
//2.check the surrounding location and inside the 240x160 that's
//checking for other instances of itself and the door
//3.if there's any instances of itself next to it, then count where and how many.
//4.set sprite index of the map drawing object to whatever the results are.

