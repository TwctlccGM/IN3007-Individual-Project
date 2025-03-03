// 
// 
function scr_save(){
	if (object_exists(obj_levelstats))
	{
		save_file = file_text_open_write(working_directory + "\SaveFile.txt");
		file_text_write_real(save_file, obj_levelstats.level_collectible_get);
		file_text_close(save_file);
	}
}