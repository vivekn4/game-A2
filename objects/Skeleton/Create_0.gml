/// @description Defaults - patrols a path, tougher than a slime
image_xscale = 4;
image_yscale = 4;
image_speed = 0.5;
image_blend = c_white;

idx = 0;         // which skeleton this is (set by the room)
skel_hp = 6;
hit_cool = 0;    // stops one swing hitting twice

path_start(Patrol1, 1.5, path_action_restart, true);
