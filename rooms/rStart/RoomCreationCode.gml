/// Start screen setup
global.spawn_x = 200;
global.spawn_y = 500;
global.skel_dead = [false, false, false];   // persists between visits to Room 2
instance_create_layer(0, 0, "Instances", Start);
