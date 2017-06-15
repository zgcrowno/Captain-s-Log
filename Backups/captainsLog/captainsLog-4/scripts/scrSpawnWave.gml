if(array_length_1d(scrGetEnemies()) == 0 && global.waveIndex < array_length_1d(global.waveArray)) {
    var gridBoxes = global.util.allGridBoxes;
    
    if(global.waveArray != noone) {
        //TODO: Augment this such that enemies are only spawned on empty gridBoxes where no point
        //of their area is touching another ship or hazard, or leaving the bounds of the radar screen
        for(var i = 0; i < array_length_1d(global.waveArray[global.waveIndex]); i++) {
            var gridBox = instance_find(objGridBox, irandom(array_length_1d(gridBoxes)));
            var wave = global.waveArray[global.waveIndex];
            
            instance_create(gridBox.x + (gridBox.sprite_width / 2), gridBox.y + (gridBox.sprite_width / 2), wave[i]);
        }
    }
}
