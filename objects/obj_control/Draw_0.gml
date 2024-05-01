/// @description Insert description here
// You can write your code in this editor


switch(room){
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "Robo Run",3,3,0,c,c,c,c,1
		);
		draw_text(
			room_width/2,200,
			@" Directions
>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
		
		// add win and gameover room and work on the text here.
		
}