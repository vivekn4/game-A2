/// Start screen setup
global.spawn_x = 200;
global.spawn_y = 500;
global.skel_dead = [false, false, false];   // persists between visits to Room 2
global.game_over = false;   // used by the game-over improvement
global.paused = false;      // used by the pause improvement
instance_create_layer(0, 0, "Instances", Start);
