/// @description Insert description here
// You can write your code in this editor
Gamepad_variables()


//fade in/fade out
if (instance_exists(obj_NEWsave_text_underside))
{
	if (image_alpha < 1) && (obj_NEWsave_text_underside.image_speed > -1)
	{
		image_alpha += 0.05	
	}
	else if (image_alpha > 0) && (obj_NEWsave_text_underside.image_speed <= -1)
	{
		image_alpha -= 0.05	
		exit
	}
	else if (image_alpha <= 0) && (obj_NEWsave_text_underside.image_speed <= -1)
	{
		instance_destroy()
		exit
	}
}

//gamepad menu shit
var menu_move = right_key_pressed-left_key_pressed;

if (gamepad4_wait < 1)
{
	gamepad4_wait += 0.05
}

if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < instance_number(obj_NEWsave_travel_greenbox))
&& (menu_move != 0) && (!gamepad_is_connected(correct_slot))
{
	menu_index_item += menu_move
}
else if (menu_index_item+menu_move > -1) && (menu_index_item+menu_move < instance_number(obj_NEWsave_travel_greenbox))
&& (menu_move != 0) && (gamepad_is_connected(correct_slot)) && (gamepad4_wait >= 1)
{
	menu_index_item += menu_move
	gamepad4_wait = 0
}

if (menu_index_item = 0)
{
	if (left = 1)
	{
		active = 1	
	}
	else active = 0
}
else if (menu_index_item = 1)
{
	if (confirm = 1)
	{
		active = 1	
	}
	else active = 0
}
else if (menu_index_item = 2)
{
	if (right = 1)
	{
		active = 1	
	}
	else active = 0
}



//sprite get
if (sprite_index <= -1)
{
	if (left > 0)
	{
		sprite_index = spr_bg_navigational2_leftbox
	}
	
	if (confirm > 0)
	{
		sprite_index = spr_bg_navigational2_yesbox	
		text = "GO HERE"
	}
	
	if (right > 0)
	{
		sprite_index = spr_bg_navigational2_rightbox	
	}
}



//selected
if (delay < 1) && (active > 0)
{
    delay += 0.05;
}

if (active > 0)
{
	if FadeNow > 0
	{ 
	FadeNow -= 0.01; 
	}
	else if FadeNow <= 0
	{
	FadeNow = 0.8;
	}
}
else FadeNow = 0;


//deactivate buttons
if ((left > 0) or (right > 0))
&& (instance_exists(obj_maptile_tile)) && (instance_exists(obj_NEWsave_text_underside))
{
	if (left = 1)
	{
		with(obj_NEWsave_text_underside)
		{
			if (inst_index-1 <= 0)
			{
				with(other)
				{
					image_alpha = 0.5	
				}
			}
			else other.image_alpha = 1
		}
	}
	else if (right = 1)
	{
		with(obj_NEWsave_text_underside)
		{
			if (inst_index >= inst)
			{
				with(other)
				{
					image_alpha = 0.5	
				}
			}
			else other.image_alpha = 1
		}
	}
	else if (confirm = 1)
	{
		with(obj_NEWsave_text_underside)
		{
			if (found = 0)
			{
				with(other)
				{
					image_alpha = 0.5	
				}
			}
			else other.image_alpha = 1
		}
	}
}


//move to a different save maptile
if (delay >= 1) && (active > 0) && (instance_exists(obj_maptile_tile)) && (instance_exists(obj_NEWsave_text_underside))
&& (image_alpha >= 1)
{
	if (left = 1) && (jump_pressed) && (obj_NEWsave_text_underside.inst_index-1 > 0)
	{
		with(obj_NEWsave_text_underside)
		{
			inst_index--
			go = 1
				
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
	else if (right = 1) && (jump_pressed) && (obj_NEWsave_text_underside.inst_index < obj_NEWsave_text_underside.inst)
	{
		with(obj_NEWsave_text_underside)
		{
			inst_index++
			go = 1
				
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
	else if (confirm = 1) && (jump_pressed) && (obj_NEWsave_text_underside.found > 0)
	{
		with(obj_NEWsave_text_underside)
		{
			global.teleport = 1
			global.saving = 0
			global.navigation = 0
			
			instance_create_layer(0,0,layer_get_id("Inst_healthui_mapborder"),obj_scrn_roomtransition)
				
			audio_play_sound(snd_button_confirm,1000,false,global.sfx_volume)
		}
	}
}
