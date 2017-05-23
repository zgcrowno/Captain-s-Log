if(room != asset_get_index(room_get_name(rmTestMainMenu))) {
    var gridBoxNumber = 0;
    
    for(i = global.hud.radarUpperBound; i < global.hud.radarLowerBound; i++) {
        for(j = global.hud.radarLeftBound; j < global.hud.radarRightBound; j++) {
            if(i % sprite_get_width(sprGridBox) == 0 && j % sprite_get_width(sprGridBox) == 0) {
                gridBox = instance_create(i, j, objGridBox);
                gridBox.numberString = string(gridBoxNumber);
                gridBoxNumber++;
            }
        }
    }
}
