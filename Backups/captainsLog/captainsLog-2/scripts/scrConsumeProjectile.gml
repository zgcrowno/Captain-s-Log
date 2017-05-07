if(sprite_index == sprHalitosisPassive) {
    var gridBoxes = scrGetProjectileConsumptiveGridBoxes();
    
    for(var i = 0; i < array_length_1d(gridBoxes); i++) {
        var gridBox = gridBoxes[i];
        with(objEnemyBullet) { //TODO: account for enemy energy balls as well
            if(position_meeting(x, y, gridBox)) {
                instance_destroy();
                if(other.numEnergyBalls < 6) {
                    other.numEnergyBalls += 2;
                }
            }
        }
    }
}
