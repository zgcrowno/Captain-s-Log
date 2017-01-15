    //This script will have to be altered if enemy ships are deemed capable of shields
    //Checks will have to be put in place preventing one ship's shields from overwriting
    //any other's
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(actionMap[? "Shields Port"] == active || actionMap[? "Shields Port"] == toDeactivate) {
            portShields[i].sprite_index = sprGridBoxShield;
        } else {
            portShields[i].sprite_index = sprGridBox;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(actionMap[? "Shields Starboard"] == active || actionMap[? "Shields Starboard"] == toDeactivate) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        } else {
            starboardShields[i].sprite_index = sprGridBox;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(actionMap[? "Shields Bow"] == active || actionMap[? "Shields Bow"] == toDeactivate) {
            bowShields[i].sprite_index = sprGridBoxShield;
        } else {
            //Prevent previous two loops from being partially overwritten
            if(bowShields[i] != bowShields[0] && bowShields[i] != bowShields[array_length_1d(bowShields) - 1]) {
                bowShields[i].sprite_index = sprGridBox;
            }
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"] == active || actionMap[? "Shields Stern"] == toDeactivate) {
            sternShields[i].sprite_index = sprGridBoxShield;
        } else {
            //Prevent previous two loops from being partially overwritten
            if(sternShields[i] != sternShields[0] && sternShields[i] != sternShields[array_length_1d(sternShields) - 1]) {
                sternShields[i].sprite_index = sprGridBox;
            }
        }
    }
