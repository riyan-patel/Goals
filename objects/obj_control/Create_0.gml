/// @description global variables
// You can write your code in this editor
global.gameover = false;
global.gamewin = false;
global.smallball = 0;
global.ball = 3;

if(room == rm_lvl2){
	global.ball = 3;
	global.smallball = 1;
} else if (room == rm_lvl3) {

	global.ball = 7;
	global.smallball = 0;
} else if (room == rm_lvl4) {

	global.ball = 3;
	global.smallball = 3;
} 
