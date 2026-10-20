/// @description Code that always runs
if (invuln > 0) invuln--;

// Dead: respawn at the start of this room
if (hp <= 0) {
	hp = max_hp;
	if (room == Room1) { global.spawn_x = 200; global.spawn_y = 500; }
	else { global.spawn_x = 110; global.spawn_y = 500; }
	room_restart();
}

if (attacking) {
	sprite_index = Hero_Attack;
}
else if (keyboard_check(vk_up) || keyboard_check(vk_down) || keyboard_check(vk_left) || keyboard_check(vk_right)) {
	sprite_index = Hero_Move;
}
else {
	sprite_index = Hero_Idle;
}
