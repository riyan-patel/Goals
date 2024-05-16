/// @description balls destorys and respawns if outside the room
// You can write your code in this editor

if(sprite_index == spr_ball and global.ball == 0){
	global.gameover = true;
} else if (sprite_index == spr_ball and global.ball > 0){
	instance_create_layer(96,288,"Instances", obj_ball);
	obj_goal.image_index = 0;
}


if(sprite_index == spr_smallball){
	global.smallball -= 1;
	instance_create_layer(96,288,"Instances", obj_ball);
}

instance_destroy();