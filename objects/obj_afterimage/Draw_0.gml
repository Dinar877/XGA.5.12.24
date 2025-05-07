if (!surface_exists(surface_afterimage))
{
	surface_afterimage = surface_create(30,30);	
}

if (surface_exists(surface_afterimage))
{
	surface_set_target(surface_afterimage);
	draw_clear_alpha(c_white,0);
	
	if (justdraw_bullet <= 0)
	{
		if (global.suit_shock = 1)
		{
			pal_swap_set(spr_toxicpalette,3,false);
			draw_sprite(sprite_index, image_index, 15, 15);
		}
		else if (global.suit_pure = 1)
		{
			pal_swap_set(spr_toxicpalette,2,false);
			draw_sprite(sprite_index, image_index, 15, 15);
		}
		else if (global.suit_pure = 0)
		{
			pal_swap_set(spr_toxicpalette,1,false);
			draw_sprite(sprite_index, image_index, 15, 15);
		}
	}
	
	shader_reset();
	surface_reset_target()
	
	if (turnred = 1) && (global.room_transition != 1)
	{
		shader_set(shd_flash_whitered);
		draw_sprite(sprite_index, image_index, 15, 15);
		shader_reset();
	}
	else if (justdraw >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.suit_pure = 1)
	{
		draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
	}
	else if (justdraw >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.suit_pure = 0)
	{
		draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
	}
	
	if (justdraw_bullet > 0) && (surface_exists(surface_afterimage))
	{
		surface_set_target(surface_afterimage)
		
		//bullet afterimages
		if (justdraw_bullet >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.beam_shield_available == 1)
		{
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 0.4, 0.4, 0.4, FadeNow3);
			draw_sprite(sprite_index, image_index, 15, 15);
			surface_reset_target()
			
			draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
			shader_reset();
		}
		else if (justdraw_bullet >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.beam_burn_available == 1)
		{
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 0.9, 0.2, 0.2, FadeNow3);
			draw_sprite(sprite_index, image_index, 15, 15);
			surface_reset_target()
			
			draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
			shader_reset();
		}
		else if (justdraw_bullet >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.beam_spread_available == 1)
		{
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 0.6, 0.0, 0.9, FadeNow3);
			draw_sprite(sprite_index, image_index, 15, 15);
			surface_reset_target()
			
			draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
			shader_reset();
		}
		else if (justdraw_bullet >= 1) && (global.room_transition != 1) && (global.room_transition1 != 1) && (global.upgrade_charge = 1)
		{
			shader_set(shd_fade_whitegreen);
			shader_set_uniform_f(fade_color, 0.1, 0.2, 0.9, FadeNow3);
			draw_sprite(sprite_index, image_index, 15, 15);
			surface_reset_target()
			
			draw_surface_ext(surface_afterimage,x-15,y-15,1,1,0,c_white,image_alpha);
			shader_reset();
		}
	}
	
	surface_free(surface_afterimage);

}


