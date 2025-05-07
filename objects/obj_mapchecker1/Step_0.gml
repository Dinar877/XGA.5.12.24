///////////////////////////////////////////////////////////
var checkerno = instance_number(obj_mapchecker1);

var tileposx_checker = floor((x/240)+(global.mapgrid_startroomx));
var tileposy_checker = floor((y/160)+(global.mapgrid_startroomy));

if (gotTile = 0) && (global.loading == 0) && (global.loading_startgame == 0)
{
	inst_maptile = instance_create_layer(x,y,layer_get_id("Inst_healthui"),obj_maptile_tile);
	
	with(inst_maptile)
	{
		tileposx = floor((other.x/240)+(global.mapgrid_startroomx));
		tileposy = floor((other.y/160)+(global.mapgrid_startroomy));
	}
	gotTile = 1;
	
}

//if player is inside the current room square, then set the player's mapgrid value!
if (place_meeting(x,y,obj_player))
{
	global.mapgrid_playerx = floor((obj_player.x/240)+(global.mapgrid_startroomx));
	global.mapgrid_playery = floor((obj_player.y/160)+(global.mapgrid_startroomy));
}

if (place_meeting(x,y,obj_player)) && (discovered = 0) && (((tileposx_checker*10)-(global.mapgrid_playerx*10)) = 0) && ((((tileposy_checker*10)-(global.mapgrid_playery*10))) = 0)
{
	discovered = 1;
	with(inst_maptile)
	{
		discovered = 1;
	}
}