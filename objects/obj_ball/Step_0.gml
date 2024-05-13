/// @description Insert description here
// You can write your code in this editor

gravity = 0;

key_up  = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space_hold = keyboard_check(vk_space);
key_space_release = keyboard_check_released(vk_space);





if(key_up and !in_motion and move_up) {
	y -= 5;
} else if (key_down and !in_motion and move_down) {
	y += 5;
}

if (key_space_hold and !in_motion) {                       
    // Increase power level gradually up to a maximum
    if (curr_speed < max_speed) {
        curr_speed += 0.2; // power_increment is the rate at which power increases
    }
}

show_debug_message(curr_speed);
show_debug_message(speed);
if (key_space_release) {
	motion_add(direction, curr_speed);
	in_motion = true;
	curr_speed = 0;
	is_shoot = true;
}



// keep working on wall collions
if (place_meeting(x, y - 1, obj_invwall)){
	move_up = false;
} else {
	move_up = true;
}


if (place_meeting(x, y + 1, obj_invwall)){
	move_down = false;
	move_up = true;
} else {
	move_down = true;
}

if(speed == 0 and is_shoot and !in_goal){
	global.gameover = true;
}

if(in_goal){
	global.gamewin = true;
}