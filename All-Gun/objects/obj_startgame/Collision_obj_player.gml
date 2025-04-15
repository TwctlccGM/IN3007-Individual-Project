/// @description
if (flag_audio_next_level = 0)
{
	audio_play_sound(snd_next_level, 0, 0);
	flag_audio_next_level = 1;
}
scr_slide_transition(TRANSITION_MODE.GOTO, rm_introcutscene);














