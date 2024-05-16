/// @description ball and room switching
// You can write your code in this editor
if (global.gameover or global.gamewin){
	if(keyboard_check_pressed(vk_enter)){
		game_restart()
	}
}

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_lvl1)
			break;
	}
}

if(keyboard_check_pressed(vk_right)){
	with(obj_ball){
		if(sprite_index == spr_ball and global.smallball > 0){
			sprite_index = spr_smallball
		} else {
			sprite_index = spr_ball;
			
		}
		
	}
}