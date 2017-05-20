var gridBoxes = global.allGridBoxes;

for (var i = 0; i < array_length_1d(gridBoxes); i++) {
    var gridBox = gridBoxes[i];
    with(gridBox) {
        if (scrIsFacingUp(other)) {
            if (y < other.y - sprite_width &&
                (collision_line(other.x, other.y, other.x, global.hud.radarUpperBound, self, false, false))) {
                sprite_index = sprGridBoxStatic;
            }
        } else if (scrIsFacingLeft(other)) {
            if (x < other.x - sprite_width &&
                (collision_line(other.x, other.y, global.hud.radarLeftBound, other.y, self, false, false))) {
                sprite_index = sprGridBoxStatic;
            }
        } else if (scrIsFacingDown(other)) {
            if (y > other.y &&
                (collision_line(other.x, other.y, other.x, global.hud.radarLowerBound, self, false, false))) {
                sprite_index = sprGridBoxStatic;
            }
        } else {
            if (x > other.x &&
                (collision_line(other.x, other.y, global.hud.radarRightBound, other.y, self, false, false))) {
                sprite_index = sprGridBoxStatic;
            }
        }
    }
}
