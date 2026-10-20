/// @description Start screen
var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_color(make_colour_rgb(20, 30, 20));
draw_rectangle(0, 0, w, h, false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_lime);
draw_text(w / 2, h / 2 - 80, "SLIME HUNT");
draw_set_color(c_white);
draw_text(w / 2, h / 2, "Arrow keys: move     Space: attack");
draw_text(w / 2, h / 2 + 60, "Press ENTER to start");
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
