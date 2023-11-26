obj_game.points += 50;

effect_create_above(ef_flare, x, y, 1.5, c_green);

if random_range(0,1) {
	obj_game.alarm[2] = 1;
}

x = -50
sprite_index = health_food[random_range(0, 20)];

if instance_number(obj_health_food) < 6 {
	sprite_index = health_food[random_range(0, 20)];
	instance_copy(true);
	x = -50;
} else {
	instance_destroy();
}