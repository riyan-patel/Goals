/// @description Insert description here
// You can write your code in this editor

if(sprite_index == spr_ball and global.ball <= 0){
	global.gameover = true;
} else if (sprite_index == spr_ball and global.ball > 0){
	global.ball -= 1;
	instance_create_layer(96,288,"Instances", obj_ball);
}


if(sprite_index == spr_smallball){
	global.smallball -= 1;
	instance_create_layer(96,288,"Instances", obj_ball);
}

instance_destroy();