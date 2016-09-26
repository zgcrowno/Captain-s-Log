y += 0.25

if(position_meeting(x, y, player)) {
    player.currentHP -= 20;
    if(player.currentHP <= 0) {
        room_goto(rmGameOver);
    }
    instance_destroy();
} else if(x > hud.playAreaRightBound || x < hud.playAreaLeftBound || y > hud.playAreaLowerBound || y < hud.playAreaUpperBound) {
    instance_destroy();
}
