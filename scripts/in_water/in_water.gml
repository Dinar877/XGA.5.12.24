function in_water() {
	//Returns if we are below water

	if (instance_exists(obj_water)) && (y > obj_player.y)
		return true;
	else
		return false;


}
