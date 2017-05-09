if(scrEqualChance()) {
    if(actionMap[? global.util.actionMapThrustersClockString] == 0 && actionMap[? global.util.actionMapThrustersCountString] == 0) {
        scrThrustersRotateClockwise(2);
    }
} else {
    if(actionMap[? global.util.actionMapThrustersCountString] == 0 && actionMap[? global.util.actionMapThrustersClockString] == 0) {
        scrThrustersRotateCounterclockwise(2);
    }
}
