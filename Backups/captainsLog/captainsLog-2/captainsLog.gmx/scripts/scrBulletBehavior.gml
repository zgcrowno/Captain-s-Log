y += 0.25

if(position_meeting(x, y, player)) {
    player.currentHP -= 20;
    if(player.currentHP <= 0) {
        room_goto(rmGameOver);
    }
    instance_destroy();
} else if(x > room_width || x < 0 || y > (room_height - hud.sprite_height) || y < 0) {
    instance_destroy();
}
