/// @desc Load JSON from file
/// @arg filename
function scr_load_json(){
	var _filename = argument0
	
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _json = json_decode(_string);
	return _json;
}