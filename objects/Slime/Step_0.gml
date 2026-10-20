/// @description All the slime actions

// Hidden until the hero is within 200 px
if (distance_to_object(Hero) > 200) {
	visible = false;
	exit;
}
visible = true;

// Is the hero attacking us? Hero on the left or right
if (position_meeting(x - 10, y, Hero) && Hero.attacking) {
	x = x + 100;
	slime_health -= Hero.attack_dmg;
	image_blend = c_red;
	alarm[1] = 8;
}
else if (position_meeting(x + 10, y, Hero) && Hero.attacking) {
	x = x - 100;
	slime_health -= Hero.attack_dmg;
	image_blend = c_red;
	alarm[1] = 8;
}

// Chase the hero
if (distance_to_object(Hero) < 250) {
	move_towards_point(Hero.x, Hero.y, 3);
	sprite_index = Slime_Moving;
	if ((hspeed < 0 && image_xscale > 0) || (hspeed > 0 && image_xscale < 0)) {
		image_xscale *= -1;
	}
}
else {
	speed = 0;
	sprite_index = Slime_Moving;
}

// Touching the hero hurts it
if (distance_to_object(Hero) < 24) hurt_hero(1);

// Dead: give XP, leave a corpse
if (slime_health <= 0) {
	gain_xp(2);
	var dead_slime = instance_create_depth(x, y, 0, Dead_Slime);
	dead_slime.speed = 0;
	instance_destroy();
}
