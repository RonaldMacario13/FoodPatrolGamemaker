obj_game.points += 50;

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1.5, c_white);

direction = other.direction;



x = -50
sprite_index = junk_food[random_range(0, 20)];

if instance_number(obj_junk_food) < 6 {
	sprite_index = junk_food[random_range(0, 20)];
	instance_copy(true);
	x = -50;
} else {
	instance_destroy();
}
