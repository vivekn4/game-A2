/// @description HUD: health bar + XP text
var bar_w = 240;
var hp_frac = clamp(hp / max_hp, 0, 1);

draw_set_color(c_dkgray);
draw_rectangle(20, 20, 20 + bar_w, 44, false);
draw_set_color(c_red);
draw_rectangle(20, 20, 20 + bar_w * hp_frac, 44, false);
draw_set_color(c_white);
draw_rectangle(20, 20, 20 + bar_w, 44, true);
draw_text(20, 48, "HP " + string(hp) + " / " + string(max_hp));

draw_text(20, 72, "XP " + string(xp) + " / " + string(xp_next) + "   Level " + string(level));
draw_set_color(c_white);
