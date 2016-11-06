for(i = hud.gameScreenLeftBound; i < hud.gameScreenRightBound; i++) {
    for(j = hud.gameScreenUpperBound; j < hud.gameScreenLowerBound; j++) {
        if(i % 20 == 0 && j % 20 == 0) {
            instance_create(i, j, objGridBox);
        }
    }
}
