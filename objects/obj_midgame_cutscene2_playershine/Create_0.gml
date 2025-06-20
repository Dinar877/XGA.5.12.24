 choosy = 2;
 
 if (choosy = 0)
 {
	sprite_index = spr_player_xgapiece_1_shine;	 
 }
 else  if (choosy = 1)
 {
	sprite_index = spr_player_xgapiece_2_shine;	 
 }
 else  if (choosy = 2)
 {
	sprite_index = spr_player_xgapiece_3_shine;	 
 }
 
 audio_play_sound(snd_cutscene_suit_shine,1000,false,global.sfx_volume);