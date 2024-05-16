/// @description directions and win and lose text
// You can write your code in this editor


switch(room){
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 30, "GOALS",3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2,100,
			@"Goal of the game is to send the dark blue ball into the square goal by overcoming the obstacles.
			The ball needs to be in the goal at a certain speed, 
			if it's above the certain speed than the goal will break and you lose one of your tries.
			You will get different amount of tries each level. 
			Some obstacles:
			- Ice surface: speeds up the ball
			- brick surface: slows down the ball
			- moving wall
			- rotating block
			- door which are only opened by switches
			
			You have controls to two balls, 
			the dark blue one which is main one that is suppose to go in the goal, 
			and a small green one which you will use to open the door by shooting at the switch.
			
			Controls:
			Up/Down: move up and down
			Right Arrow: to switch balls
			Space: to shoot (longer you hold space the more speed, however there is a max speed at which it stop increasing)
			
>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
		
		// add win and gameover room and work on the text here
		
}

if(global.gameover){
	draw_set_halign(fa_middle);
	draw_text_transformed_color(room_width / 2, room_height / 2, "Game Over", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
	draw_text_transformed_color(room_width / 2, room_height / 3 * 2, "Press enter to restart", 3, 3, 0, c_red, c_red, c_red, c_red, 1);
	draw_set_halign(fa_left);
}

if(global.gamewin){
	draw_set_halign(fa_middle);
	draw_text_transformed_color(room_width / 2, room_height / 2, "You Win", 3, 3, 0, c_green, c_green, c_green, c_green, 1);
	draw_text_transformed_color(room_width / 2, room_height / 3 * 2, "Press enter to restart", 3, 3, 0, c_green, c_green, c_green, c_green, 1);
	draw_set_halign(fa_left);
	
	
}