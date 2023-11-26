// Moviment ===============================================

// This "if" was made for player stop if no button held down

speed = clamp(speed, 0, 10);

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) || (keyboard_check(vk_down) || keyboard_check(ord("S"))){
	
	if keyboard_check(vk_up) || keyboard_check(ord("W")) {
		motion_add(image_angle, 0.1);
	}
	if keyboard_check(vk_down) || keyboard_check(ord("S")) {	
		if speed > 0 {
			speed -= 0.1;
		}
	}
	
} else {
	if speed > 0 {
			speed -= 0.05;
	}
}

if keyboard_check(vk_right) || keyboard_check(ord("D")) {
		image_angle -= 4;
	}
if keyboard_check(vk_left) || keyboard_check(ord("A")) {
	image_angle += 4;
}
	
// Shooting ===============================================

if keyboard_check_pressed(vk_space) {
	instance_create_layer(x, y, "Instances", obj_bullet);
}

move_wrap(true, true, 0);
