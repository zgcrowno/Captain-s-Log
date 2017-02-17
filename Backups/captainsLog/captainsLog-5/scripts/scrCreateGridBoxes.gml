//Eventually, create util variable for gridOffset
for(i = 0; i < (hud.radarRightBound + 1) - (hud.radarLeftBound - 1); i++) {
    for(j = 0; j < (hud.radarLowerBound + 1) - (hud.radarUpperBound - 1); j++) {
        if(i % sprite_get_width(sprGridBox) == 0 && j % sprite_get_width(sprGridBox) == 0) {
            instance_create(i, j, objGridBox);
        }
    }
}
