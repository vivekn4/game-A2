/// Room 1 setup - resets every visit (slimes are re-rolled)
if (!instance_exists(Hero)) {
	instance_create_layer(global.spawn_x, global.spawn_y, "Instances", Hero);
}
else {
	Hero.x = global.spawn_x;
	Hero.y = global.spawn_y;
}

// Obstacles
for (var i = 0; i < 4; i++) instance_create_layer(512 + 128 * i, 256, "Instances", Wall);
for (var j = 0; j < 4; j++) instance_create_layer(1024, 512 + 128 * j, "Instances", Wall);
instance_create_layer(256, 640, "Instances", Wall);
instance_create_layer(384, 640, "Instances", Wall);
instance_create_layer(256, 768, "Instances", Wall);

// Decorations
repeat (60) instance_create_layer(random(2000), random(1000), "Instances", Decor);

// 10-15 slimes at random spots (hidden until the hero is close)
repeat (irandom_range(10, 15)) {
	instance_create_layer(random_range(100, 1900), random_range(100, 900), "Instances", Slime);
}

// Door to Room 2
var d = instance_create_layer(1940, 500, "Instances", Door);
d.target_room = Room2;
d.target_x = 110;
d.target_y = 500;
d.label = "ROOM 2 >";
