/// @description Draw a clear wooden door with a label
draw_set_color(make_colour_rgb(120, 70, 30));
draw_rectangle(x - 32, y - 64, x + 32, y + 64, false);
draw_set_color(c_yellow);
draw_rectangle(x - 32, y - 64, x + 32, y + 64, true);
draw_set_halign(fa_center);
draw_text(x, y - 84, label);
draw_set_halign(fa_left);
draw_set_color(c_white);
