/// @description Give the hero XP; level up when enough is collected
/// @param amount
function gain_xp(amount) {
	with (Hero) {
		xp += amount;
		while (xp >= xp_next) {
			xp -= xp_next;
			level += 1;
			xp_next = level * 10;
			max_hp += 2;
			hp = max_hp;                       // full heal on level up
			attack_dmg = 1 + floor(level / 2); // hits harder as you level
		}
	}
}
