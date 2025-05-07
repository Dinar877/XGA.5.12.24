/// @description Insert description here
// You can write your code in this editor
draw_text(x-60,y+2,"USE ABILITY")

if (selected = 0) && (new_input == 0)
{
draw_self();
draw_text(x+2,y+2,"B");
}

if (waiting >= 2)
{
shader_set(shd_flash_fade_white);
shader_set_uniform_f(fade_color, 0.7, 1.0, 0.7, FadeNow);
draw_self();
draw_text(x+2,y+2,"WAITING FOR INPUT...");
FadeNow -= 0.005;
shader_reset();
}
else if (selected == 1) && (waiting != 2) && (new_input == 0)
{
shader_set(shd_flash_fade_white);
shader_set_uniform_f(fade_color, 0.7, 1.0, 0.7, FadeNow);
draw_self();
draw_text(x+2,y+2,"B");
FadeNow -= 0.005;
shader_reset();
}
else if (new_input != 0) && (selected == 1)
{
shader_set(shd_flash_fade_white);
shader_set_uniform_f(fade_color, 0.7, 1.0, 0.7, FadeNow);
draw_self();
draw_text(x+2,y+2,new_input);
FadeNow -= 0.005;
shader_reset();
}
else if (new_input != 0) && (selected == 0)
{
draw_self();
draw_text(x+2,y+2,new_input);
}
