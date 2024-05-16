/// @description ball count in level rooms
// You can write your code in this editor
if(room == rm_lvl1 or room == rm_lvl2 or room == rm_lvl3 or room == rm_lvl4){
	draw_text(room_width / 10, 40, " : " + string(global.ball));
	draw_text(room_width / 10, 70, " : " + string(global.smallball));
	//draw_sprite(spr_bullet,1,room_width / 12, 65);
	draw_sprite_ext(spr_ball, 1, room_width / 12, 50, 1, 1 ,0, c_white, image_alpha);
	draw_sprite_ext(spr_smallball, 1, room_width / 12, 80, 1, 1,0, c_white, image_alpha);
}