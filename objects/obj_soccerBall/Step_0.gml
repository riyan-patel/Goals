/// @description Insert description here
// You can write your code in this editor


key_up  = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_space = keyboard_key_release(vk_left);



if(key_up) {
	y -= 5;
} else if (key_down) {
	y += 5;
}

if(key_space){
	motion_add(x, 5);
} 

