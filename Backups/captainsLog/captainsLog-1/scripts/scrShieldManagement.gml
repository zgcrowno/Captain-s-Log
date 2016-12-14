if(script_execute(scrIsTouchingTimeline) && !touchedTimeline) {
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(actionMap[? "Shields Port"]) {
            portShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(actionMap[? "Shields Starboard"]) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(actionMap[? "Shields Bow"]) {
            bowShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"]) {
            sternShields[i].sprite_index = sprGridBoxShield;
        }
    }
}
