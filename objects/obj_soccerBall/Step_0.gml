/// @description Insert description here
// You can write your code in this editor
   

key_up  = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space_hold = keyboard_check(vk_space);
key_space_release = keyboard_check_released(vk_space);
max_speed = 5.2;
curr_speed = 0;


if(key_up) {
	y -= 5;
} else if (key_down) {
	y += 5;
}

show_debug_message(key_space_hold);
show_debug_message(!key_space_hold);
if (key_space_hold) {                       
    // Increase power level gradually up to a maximum
    if (curr_speed < max_speed) {
        curr_speed += 0.2; // power_increment is the rate at which power increases
    }
	if (key_space_release) {
		motion_add(direction, curr_speed);
		curr_speed = 0;
	}
}

show_debug_message(key_space_release);

