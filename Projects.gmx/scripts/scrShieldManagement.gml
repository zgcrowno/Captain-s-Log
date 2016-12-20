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
            //Prevent previous two loops from being partially overwritten
            if(bowShields[i] != bowShields[0] && bowShields[i] != bowShields[array_length_1d(bowShields) - 1]) {
                bowShields[i].sprite_index = sprGridBox;
            }
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"] == active) {
            sternShields[i].sprite_index = sprGridBoxShield;
        } else {
            //Prevent previous two loops from being partially overwritten
            if(sternShields[i] != sternShields[0] && sternShields[i] != sternShields[array_length_1d(sternShields) - 1]) {
                sternShields[i].sprite_index = sprGridBox;
            }
        }
    }
