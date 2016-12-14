if(script_execute(scrIsTouchingTimeline) && !touchedTimeline) {
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(actionMap[? "Shields Port"] == active) {
            portShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(actionMap[? "Shields Starboard"] == active) {
            starboardShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(actionMap[? "Shields Bow"] == active) {
            bowShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"] == active) {
            sternShields[i].sprite_index = sprGridBoxShield;
        }
    }
}
