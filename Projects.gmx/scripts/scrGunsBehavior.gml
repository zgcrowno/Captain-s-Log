if(random(10) >= 9.97) {
    if(scrIsAbove(player)) {
        if(scrIsFacingUp(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 6) {
                    scrGunsDivertPower();
                }
            }
        }
    } else if(scrIsBelow(player)) {
        if(scrIsFacingDown(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 6) {
                    scrGunsDivertPower();
                }
            }
        }
    } else if(scrIsLeft(player)) {
        if(scrIsFacingLeft(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 6) {
                    scrGunsDivertPower();
                }
            }
        }
    } else {
        if(scrIsFacingRight(self)) {
            if(!actionMap[? util.actionMapGunsString]) {
                if(random(10) >= 6) {
                    scrGunsDivertPower();
                }
            }
        }
    }
}
