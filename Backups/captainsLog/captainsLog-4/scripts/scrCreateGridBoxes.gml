//Eventually, create util variable for gridOffset
for(i = hud.playAreaLeftBound; i < hud.playAreaRightBound; i++) {
    for(j = hud.playAreaUpperBound; j < hud.playAreaLowerBound; j++) {
        if(i % sprite_get_width(sprGridBox) == 0 && j % sprite_get_width(sprGridBox) == 0) {
            instance_create(i - 17, j, objGridBox);
        }
    }
}
