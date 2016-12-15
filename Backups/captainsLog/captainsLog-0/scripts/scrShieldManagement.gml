    for(i = 0; i < array_length_1d(portShields); i++) {
        if(actionMap[? "Shields Port"] == active) {
            portShields[i].sprite_index = sprGridBoxShield;
        } else {
            portShields[i].sprite_index = sprGridBox;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(actionMap[? "Shields Starboard"] == active) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        } else {
            starboardShields[i].sprite_index = sprGridBox;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(actionMap[? "Shields Bow"] == active) {
            bowShields[i].sprite_index = sprGridBoxShield;
        } else {
            bowShields[i].sprite_index = sprGridBox;
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"] == active) {
            sternShields[i].sprite_index = sprGridBoxShield;
        } else {
            sternShields[i].sprite_index = sprGridBox;
        }
    }
