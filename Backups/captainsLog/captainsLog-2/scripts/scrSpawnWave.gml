if(room != rmTestNoEnemies) {
    if(array_length_1d(scrGetEnemies()) == 0 && global.waveIndex < array_length_1d(global.waveArray)) {
        var gridBoxes = global.allGridBoxes;
        
        if(global.waveArray != noone) {
            for(var i = 0; i < array_length_1d(global.waveArray[global.waveIndex]); i++) {
                var gridBox = instance_find(objGridBox, irandom(array_length_1d(gridBoxes)));
                var wave = global.waveArray[global.waveIndex];
                
                var enemy = instance_create(gridBox.x + (gridBox.sprite_width / 2), gridBox.y + (gridBox.sprite_width / 2), wave[i]);
                
                //Make sure enemy spawns on spawnable area
                //TODO: maybe update this to be more efficient/move it to its own script. Also, maybe account for environmental hazards, if those are added in the future.
                with(enemy) {
                    while(place_meeting(x, y, objShip) || place_meeting(x, y, objPlayerBullet) || place_meeting(x, y, objPlayerEnergyBall)
                          || bbox_right > global.hud.radarRightBound || bbox_left < global.hud.radarLeftBound || bbox_bottom > global.hud.radarLowerBound
                          || bbox_top < global.hud.radarUpperBound) {
                        var nextGridBox = instance_find(objGridBox, irandom(array_length_1d(gridBoxes)));
                        x = nextGridBox.x + (gridBox.sprite_width / 2);
                        y = nextGridBox.y + (gridBox.sprite_width / 2);
                    }
                }
            }
        }
    }
}
