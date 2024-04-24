/// @description Insert description here
// You can write your code in this editor


key_up  = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space_hold = keyboard_check(vk_space);
key_space_release = keyboard_check_released(vk_space);



if(key_up and !in_motion) {
	y -= 5;
} else if (key_down and !in_motion) {
	y += 5;
}

if (key_space_hold and !in_motion) {                       
    // Increase power level gradually up to a maximum
    if (curr_speed < max_speed) {
        curr_speed += 0.2; // power_increment is the rate at which power increases
    }
}



if (key_space_release) {
	motion_add(direction, curr_speed);
	in_motion = true;
	curr_speed = 0;
}