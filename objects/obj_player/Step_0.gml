/// Initialize Mario

scr_player_controls();

if (move_right) {
    x += hspd;
}

if (move_left) {
x -= hspd;
}

//Make Mario jump
if (jump) {
    y -= jump_height;
}

//Make Mario fall
//scr_gravity();