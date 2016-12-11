if(util.turnTime == 0) {
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(shieldsPort) {
            portShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(shieldsStarboard) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(shieldsBow) {
            bowShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(shieldsStern) {
            sternShields[i].sprite_index = sprGridBoxShield;
        }
    }
}
