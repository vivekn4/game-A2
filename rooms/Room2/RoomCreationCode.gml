/// Room 2 setup - skeletons you have killed stay dead
if (!instance_exists(Hero)) {
	instance_create_layer(global.spawn_x, global.spawn_y, "Instances", Hero);
}
else {
	Hero.x = global.spawn_x;
	Hero.y = global.spawn_y;
}

// Obstacles
for (var j = 0; j < 4; j++) instance_create_layer(640, 128 * j, "Instances", Wall);
for (var k = 0; k < 5; k++) instance_create_layer(1280, 384 + 128 * k, "Instances", Wall);

// Decorations
repeat (60) instance_create_layer(random(2000), random(1000), "Instances", Decor);

// Three skeletons spread along the patrol path (skip ones already killed)
for (var i = 0; i < 3; i++) {
	if (!global.skel_dead[i]) {
		var s = instance_create_layer(0, 0, "Instances", Skeleton);
		s.idx = i;
		s.path_position = i / 3;
		s.x = path_get_x(Patrol1, i / 3);
		s.y = path_get_y(Patrol1, i / 3);
	}
}

// Door back to Room 1
var d = instance_create_layer(50, 500, "Instances", Door);
d.target_room = Room1;
d.target_x = 1800;
d.target_y = 500;
d.label = "< ROOM 1";
