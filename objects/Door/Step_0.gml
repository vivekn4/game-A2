/// @description Walk into the door to change rooms
if (distance_to_object(Hero) < 40) {
	global.spawn_x = target_x;
	global.spawn_y = target_y;
	room_goto(target_room);
}
