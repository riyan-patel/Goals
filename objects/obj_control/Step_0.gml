/// @description Insert description here
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