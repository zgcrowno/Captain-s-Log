gridBoxNumber = 0;
for(i = hud.radarUpperBound; i < hud.radarLowerBound; i++) {
    for(j = hud.radarLeftBound; j < hud.radarRightBound; j++) {
        if(i % sprite_get_width(sprGridBox) == 0 && j % sprite_get_width(sprGridBox) == 0) {
            gridBox = instance_create(i, j, objGridBox);
            gridBox.numberString = string(gridBoxNumber);
            gridBoxNumber++;
        }
    }
}
