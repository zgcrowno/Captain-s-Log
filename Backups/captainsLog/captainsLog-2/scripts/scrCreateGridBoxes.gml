for(i = hud.playAreaLeftBound; i < hud.playAreaRightBound; i++) {
    for(j = hud.playAreaUpperBound; j < hud.playAreaLowerBound; j++) {
        if(i % 20 == 0 && j % 20 == 0) {
            instance_create(i, j, objGridBox);
        }
    }
}
