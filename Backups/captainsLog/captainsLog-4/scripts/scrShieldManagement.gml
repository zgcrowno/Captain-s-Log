if(script_execute(scrIsTouchingTimeline) && !touchedTimeline) {
    for(i = 0; i < array_length_1d(portShields); i++) {
        if(actionMap[? "Shields Port"] == "Active") {
            portShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(starboardShields); i++) {
        if(actionMap[? "Shields Starboard"] == "Active") {
            starboardShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(bowShields); i++) {
        if(actionMap[? "Shields Bow"] == "Active") {
            bowShields[i].sprite_index = sprGridBoxShield;
        }
    }
    for(i = 0; i < array_length_1d(sternShields); i++) {
        if(actionMap[? "Shields Stern"] == "Active") {
            sternShields[i].sprite_index = sprGridBoxShield;
        }
    }
}
