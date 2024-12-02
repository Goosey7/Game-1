	var _keyRight  = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var _keyLeft  = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var _keyJump =keyboard_check(vk_space);
	var _keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var _keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
	
hsp = ((_keyRight - _keyLeft) * WalkSpeed);
y += vsp; 


aimside = sign(hsp); 
if (aimside != 0) image_xscale = -aimside;

if (hsp != 0 ) sprite_index = sPlayerR;
		else
		sprite_index = sPlayerIdle;

	

	
//collide and move 
if (place_meeting(x + hsp, y, oWall)) {
	while (abs(hsp) > 0.1) {
		hsp *= 0.5;
		if (!place_meeting(x + hsp, y, oWall)) x += hsp;
	}
	hsp = 0;
}
x += hsp;
