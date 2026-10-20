/// @description Draw grass, flowers or bushes
switch (kind) {
	case 0: // grass tuft
		draw_set_color(make_colour_rgb(60, 140, 60));
		draw_line(x - 4, y, x - 7, y - 10);
		draw_line(x, y, x, y - 14);
		draw_line(x + 4, y, x + 7, y - 10);
		break;
	case 1: // flower
		draw_set_color(c_fuchsia);
		draw_circle(x, y, 5, false);
		draw_set_color(make_colour_rgb(250, 220, 80));
		draw_circle(x, y, 2, false);
		break;
	case 2: // bush
		draw_set_color(make_colour_rgb(30, 110, 40));
		draw_circle(x, y, 16, false);
		draw_set_color(make_colour_rgb(50, 150, 60));
		draw_circle(x - 5, y - 5, 7, false);
		break;
}
draw_set_color(c_white);
