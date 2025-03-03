//
//
function scr_load(){
	if (object_exists(obj_levelstats))
	{
		var _file_load = file_text_open_read(working_directory + "\SaveFile.txt");
		obj_levelstats.level_collectible_get = file_text_read_real(_file_load);
		file_text_close(_file_load);
	}
}