/// @description Insert description here
// You can write your code in this editor
if (targetreached = 0)
{
	x = lerp(x,xtarget+1,0.015)
	y = lerp(y,ytarget+1,0.015)
	stopsnd = xtarget/x
	stopsnd = clamp(stopsnd,0,1);
	audio_emitter_gain(global.inst_audio_emitterID[inst_n], (stopsnd) * global.sfx_volume)
}

if (xtarget <= x) && (targetreached = 0)
{
	audio_stop_sound(snd_airplane_flight)
	instance_create_layer(x,y,layer_get_id("Instances_1"),obj_blackhole_bg_truebackground_intro)
	targetreached = 1
	originY = y
	originX = x
	sprite_index = spr_bg_spaceG11
	with(obj_text_spawning_titleintro)
	{
		new1 = 4
	}
}
else if (targetreached > 0)
{
	var ranX = random_range(bbox_left,bbox_right)
	var ranY = random_range(bbox_top,bbox_bottom)
	
	instance_create_depth(ranX,ranY,id.depth-1,obj_explosion_random)
	
	x = originX+xshake2
	
	if (xshake2 <= 0)
		{
			xshake2 = random_range(1,2)	
		}
		
	if (xshake2 > 0)
	{
	xshake2 -= 0.25;
	}
	
	
	y = originY+yshake2
	
	if (yshake2 <= 0)
		{
			yshake2 = random_range(1,2)	
		}
		
	if (yshake2 > 0)
	{
	yshake2 -= 0.25;
	}
	
	if (!audio_is_playing(snd_beamexplosion1))
		{
			var snd11 = audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_beamexplosion1,100,true,global.sfx_volume)
			audio_sound_gain(snd11,0.3,0)
		}
	if (deathtimer >= 1)
	{
		deathtimer = 0
		var snd12 = audio_play_sound_on(global.inst_audio_emitterID[inst_n],snd_beamexplosion,100,true,global.sfx_volume)
		audio_sound_gain(snd12,0.3,0)
	}
	else deathtimer += 1/15
	
	deathanim += 1/2;
	if (deathanim >=100) && (!instance_exists(obj_deathscreennuke_intro))
		{
			instance_create_layer(x,y,layer_get_id("Inst_healthui_mapborder"),obj_deathscreennuke_intro)
		}
}