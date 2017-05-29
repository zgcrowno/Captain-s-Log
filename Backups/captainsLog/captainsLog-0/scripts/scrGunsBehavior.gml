if(scrGunsChance()) {
    if(scrIsFacing(global.player)) {
        if(!actionMap[? global.util.actionMapGunsString] && gunsArray != noone) {
            if(random(10) >= 6) {
                scrGunsDivertPower();
            }
        }
    }
}
