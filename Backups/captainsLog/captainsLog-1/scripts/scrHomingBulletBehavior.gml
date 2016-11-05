if(instance_exists(player.targetID) && prevTarget == player.target) {
    move_towards_point(player.target.x, player.target.y, player.bulletSpeed);
    image_angle = point_direction(x, y, player.target.x, player.target.y) - 90;
} else {
    x += (x - xprevious);
    y += (y - yprevious);
}

for(i = 0; i < array_length_1d(enemies); i++) {
    if(position_meeting(x, y, enemies[i])) {
        enemies[i].currentHP -= 10;
        instance_destroy();
    }
}

if(x > hud.playAreaRightBound || x < hud.playAreaLeftBound || y > hud.playAreaLowerBound || y < hud.playAreaUpperBound) {
    instance_destroy();
}
