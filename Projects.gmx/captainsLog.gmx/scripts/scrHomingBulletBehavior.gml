if(instance_exists(player.targetID) && deadTarget = false) {
    move_towards_point(player.target.x, player.target.y, player.bulletSpeed);
    image_angle = point_direction(x, y, player.target.x, player.target.y) - 90;
} else {
    deadTarget = true;
    x += (x - xprevious);
    y += (y - yprevious);
}

for(i = 0; i < array_length_1d(pawns); i++) {
    if(position_meeting(x, y, pawns[i])) {
        pawns[i].currentHP -= 10;
        instance_destroy();
    }
}

if(x > room_width || x < 0 || y > (room_height - hud.sprite_height) || y < 0) {
    instance_destroy();
}
