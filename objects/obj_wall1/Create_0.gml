/// @description block following path
// You can write your code in this editor

if(room == rm_lvl1 or room == rm_lvl2 or room == rm_lvl3){
	path_start(pth_level2, 3, path_action_reverse, true);
} else if (room == rm_lvl4){
	path_start(pth_level1, 3, path_action_reverse, true);
}