/// @description Fight the hero while patrolling
if (hit_cool > 0) hit_cool--;

var close = distance_to_object(Hero) < 30;
sprite_index = close ? Skeleton_Attacking : Skeleton_Moving;

// Hero hits the skeleton
if (close && Hero.attacking && hit_cool <= 0) {
	skel_hp -= Hero.attack_dmg;
	hit_cool = 20;
	image_blend = c_red;
	alarm[1] = 8;
}

// Skeleton hits the hero
if (distance_to_object(Hero) < 24) hurt_hero(2);

// Dead: remember it for this visit, give XP
if (skel_hp <= 0) {
	global.skel_dead[idx] = true;
	gain_xp(5);
	instance_destroy();
	exit;
}
