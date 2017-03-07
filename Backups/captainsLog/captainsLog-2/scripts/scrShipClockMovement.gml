if(actionMap[? util.actionMapThrustersClockString] > 0) {
    if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
        if(actionMap[? util.actionMapThrustersClockString] >= 2) {
            image_angle += 180;
            view_angle[0] += 180;
            actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString]))] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] - 1);
            actionMap[? util.actionMapThrustersClockString] -= 1;
        } else {
            image_angle += 270;
            view_angle[0] += 270;
        }
    } else {
        image_angle += 270;
        view_angle[0] += 270;
    }
}
