/// @description Defaults
image_xscale = 4;
image_yscale = 4;
image_speed = 0.5;
image_blend = c_white;

// Random start frame so the slimes don't all hop together
image_index = irandom(sprite_get_number(sprite_index) - 1);

slime_health = 3;
visible = false;     // hidden until the hero is close
