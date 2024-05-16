/// @description collisions with the goal
// You can write your code in this editor
show_debug_message(speed);

if(sprite_index == spr_ball){
	if (speed > 20){
		other.image_index = 1;
		in += 1;
	}
	else if (in == 0) {
		if(room == rm_lvl1){
			in_goal = true;
			motion_set(direction, 0);
			room_goto(rm_lvl2);
			in_goal = false;
		} else if (room == rm_lvl2) {
			in_goal = true;
			motion_set(direction, 0);
			room_goto(rm_lvl3);
			in_goal = false;
		} else if (room == rm_lvl3){
			in_goal = true;
			motion_set(direction, 0);
			room_goto(rm_lvl4);
			in_goal = false;
		} else if (room == rm_lvl4) {
			in_goal = true;
			motion_set(direction, 0);
		}
		
	}
}

