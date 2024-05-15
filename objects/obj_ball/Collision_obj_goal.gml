/// @description Insert description here
// You can write your code in this editor
show_debug_message(speed);

if(sprite_index == spr_ball){
	if (speed > 20){
		other.image_index = 1;
		in += 1;
	}
	else if (in == 0) {
		in_goal = true;
		motion_set(direction, 0);
	}
}

