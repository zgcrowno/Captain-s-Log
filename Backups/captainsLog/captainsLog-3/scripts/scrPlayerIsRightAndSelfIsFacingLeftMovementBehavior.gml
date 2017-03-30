if(scrEqualChance()) {
    if(actionMap[? util.actionMapThrustersClockString] == 0 && actionMap[? util.actionMapThrustersCountString] == 0) {
        scrThrustersRotateClockwise(2);
    }
} else {
    if(actionMap[? util.actionMapThrustersCountString] == 0 && actionMap[? util.actionMapThrustersClockString] == 0) {
        scrThrustersRotateCounterclockwise(2);
    }
}
