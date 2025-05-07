function LoadJSONFromFile(argument0) {
	var filename = argument0

	var _buffer = buffer_load(filename)
	var _string = buffer_read(_buffer,buffer_string)
	buffer_delete(_buffer)

	var json = json_decode(_string)
	return json


}
