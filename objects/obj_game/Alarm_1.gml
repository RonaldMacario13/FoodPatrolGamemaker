player_lives -= 1;

if player_lives <= 0 {
	instance_destroy(obj_player);
	obj_game.alarm[0] = 120;
}