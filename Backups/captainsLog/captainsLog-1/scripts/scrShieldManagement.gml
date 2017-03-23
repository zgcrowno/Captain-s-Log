    //This script will have to be altered if enemy ships are deemed capable of shields
    //Checks will have to be put in place preventing one ship's shields from overwriting
    //any other's
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(portShields[i].sprite_index != sprGridBoxStatic) {
            if((actionMap[? util.actionMapShieldsPortString] == active || actionMap[? util.actionMapShieldsPortString] == toActivate) && currentHPShieldsPort > 0) {
                portShields[i].sprite_index = sprGridBoxShield;
            } else {
                if(currentHPShieldsPort <= 0) {
                    actionMap[? util.actionMapShieldsPortString] = inactive;
                }
                portShields[i].sprite_index = sprGridBox;
            }
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(starboardShields[i].sprite_index != sprGridBoxStatic) {
            if((actionMap[? util.actionMapShieldsStarboardString] == active || actionMap[? util.actionMapShieldsStarboardString] == toActivate) && currentHPShieldsStarboard > 0) {
                starboardShields[i].sprite_index = sprGridBoxShield;
            } else {
                if(currentHPShieldsStarboard <= 0) {
                    actionMap[? util.actionMapShieldsStarboardString] = inactive;
                }
                starboardShields[i].sprite_index = sprGridBox;
            }
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(bowShields[i].sprite_index != sprGridBoxStatic) {
            if((actionMap[? util.actionMapShieldsBowString] == active || actionMap[? util.actionMapShieldsBowString] == toActivate) && currentHPShieldsBow > 0) {
                bowShields[i].sprite_index = sprGridBoxShield;
            } else {
                if(currentHPShieldsBow <= 0) {
                    actionMap[? util.actionMapShieldsBowString] = inactive;
                }
                //Prevent previous two loops from being partially overwritten
                if(bowShields[i] != bowShields[0] && bowShields[i] != bowShields[array_length_1d(bowShields) - 1]) {
                    bowShields[i].sprite_index = sprGridBox;
                }
            }
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(sternShields[i].sprite_index != sprGridBoxStatic) {
            if((actionMap[? util.actionMapShieldsSternString] == active || actionMap[? util.actionMapShieldsSternString] == toActivate) && currentHPShieldsStern > 0) {
                sternShields[i].sprite_index = sprGridBoxShield;
            } else {
                if(currentHPShieldsStern <= 0) {
                    actionMap[? util.actionMapShieldsSternString] = inactive;
                }
                //Prevent previous two loops from being partially overwritten
                if(sternShields[i] != sternShields[0] && sternShields[i] != sternShields[array_length_1d(sternShields) - 1]) {
                    sternShields[i].sprite_index = sprGridBox;
                }
            }
        }
    }
    
