if(global.input == global.util.portStringLower) {
    sprite_index = sprMezzaninePort;
} else if(global.input == global.util.starboardStringLower) {
    sprite_index = sprMezzanineStarboard;
} else if(global.input == global.util.bowStringLower) {
    sprite_index = sprMezzanineBow;
} else if(global.input == global.util.sternStringLower) {
    sprite_index = sprMezzanineStern;
} else {
    //TODO: Error about input
}
currentPPActive = requiredPPActive;
