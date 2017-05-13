//This script will have to be altered if enemy ships are deemed capable of shields
//Checks will have to be put in place preventing one ship's shields from overwriting
//any other's
for(var i = 0; i < array_length_1d(portShields); i++) {
    if(portShields[i].sprite_index != sprGridBoxStatic) {
        if((actionMap[? global.util.actionMapShieldsPortString] == active || actionMap[? global.util.actionMapShieldsPortString] == toActivate) && currentHPShieldsPort > 0) {
            portShields[i].sprite_index = sprGridBoxShield;
        } else {
            if(currentHPShieldsPort <= 0) {
                actionMap[? global.util.actionMapShieldsPortString] = inactive;
            }
            portShields[i].sprite_index = sprGridBox;
        }
    }
}
for(var i = 0; i < array_length_1d(starboardShields); i++) {
    if(starboardShields[i].sprite_index != sprGridBoxStatic) {
        if((actionMap[? global.util.actionMapShieldsStarboardString] == active || actionMap[? global.util.actionMapShieldsStarboardString] == toActivate) && currentHPShieldsStarboard > 0) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        } else {
            if(currentHPShieldsStarboard <= 0) {
                actionMap[? global.util.actionMapShieldsStarboardString] = inactive;
            }
            starboardShields[i].sprite_index = sprGridBox;
        }
    }
}
for(var i = 0; i < array_length_1d(bowShields); i++) {
    if(bowShields[i].sprite_index != sprGridBoxStatic) {
        if((actionMap[? global.util.actionMapShieldsBowString] == active || actionMap[? global.util.actionMapShieldsBowString] == toActivate) && currentHPShieldsBow > 0) {
            bowShields[i].sprite_index = sprGridBoxShield;
        } else {
            if(currentHPShieldsBow <= 0) {
                actionMap[? global.util.actionMapShieldsBowString] = inactive;
            }
            
            //Prevent previous two loops from being partially overwritten
            if(!scrContains(portShields, bowShields[i]) && !scrContains(starboardShields, bowShields[i])) {
                bowShields[i].sprite_index = sprGridBox;
            }
        }
    }
}
for(var i = 0; i < array_length_1d(sternShields); i++) {
    if(sternShields[i].sprite_index != sprGridBoxStatic) {
        if((actionMap[? global.util.actionMapShieldsSternString] == active || actionMap[? global.util.actionMapShieldsSternString] == toActivate) && currentHPShieldsStern > 0) {
            sternShields[i].sprite_index = sprGridBoxShield;
        } else {
            if(currentHPShieldsStern <= 0) {
                actionMap[? global.util.actionMapShieldsSternString] = inactive;
            }
            
            //Prevent previous two loops from being partially overwritten
            if(!scrContains(portShields, sternShields[i]) && !scrContains(starboardShields, sternShields[i])) {
                sternShields[i].sprite_index = sprGridBox;
            }
        }
    }
}
    
