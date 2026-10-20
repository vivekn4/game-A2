/// @description Damage the hero (brief invincibility, red blink)
/// @param amount
function hurt_hero(amount) {
	with (Hero) {
		if (invuln <= 0) {
			hp -= amount;
			invuln = 60;
			image_blend = c_red;
			alarm[1] = 8;
		}
	}
}
