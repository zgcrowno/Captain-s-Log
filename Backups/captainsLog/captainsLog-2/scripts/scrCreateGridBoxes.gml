for(var i = hud.radarLeftBound; i < hud.radarRightBound; i++) {
    for(var j = hud.radarUpperBound; j < hud.radarLowerBound; j++) {
        if(i % sprite_get_width(sprGridBox) == 0 && j % sprite_get_width(sprGridBox) == 0) {
            instance_create(i, j, objGridBox);
        }
    }
}
