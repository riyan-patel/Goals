/// @description movement of both balls
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
	if(sprite_index == spr_ball){
		global.ball -= 1;
	}
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

if(sprite_index == spr_smallball and is_shoot and speed == 0 and global.smallball > 0){
	global.smallball -= 1;
	instance_destroy()
	instance_create_layer(96,288,"Instances", obj_ball);
	
	
}

if(sprite_index = spr_ball and speed == 0 and is_shoot and !in_goal){
	if(global.ball > 0){
		instance_destroy()
		instance_create_layer(96,288,"Instances", obj_ball);
		obj_goal.image_index = 0;
	} else {
		global.gameover = true;
	}
}

if(in_goal and room == rm_lvl4){
	global.gamewin = true;
}