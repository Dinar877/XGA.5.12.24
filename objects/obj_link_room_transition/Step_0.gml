/*
if keyboard_check_pressed(vk_enter) && (paused == false)
{
        scrn = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, true, 0, 0)
        instance_deactivate_object(par_pause);
        paused = true;
}
else if keyboard_check_pressed(vk_enter) && (paused == true)
{
        sprite_delete(scrn);
        instance_activate_object(par_pause);
        paused = false;
}

/* */
/*  */
