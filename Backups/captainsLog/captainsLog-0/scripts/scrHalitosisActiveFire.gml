if(sprite_index != sprHalitosisPassive) {
    if(sprite_index != sprHalitosisSmall) {
        sprite_index = sprHalitosisSmall;
    } else {
        sprite_index = sprHalitosis;
    }
    currentPPActive = requiredPPActive;
} else {
    scrLog(global.util.warnShipFormString);
}
