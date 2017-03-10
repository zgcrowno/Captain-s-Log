if(actionMap[? util.actionMapThrustersCountString] > 0) {
    if(object_index == objRiceCake && actionMap[? util.actionMapPassiveString] == active) {
        if(actionMap[? util.actionMapThrustersCountString] >= 2) {
            image_angle += 180;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[0] += 180;
            }
            actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString]))] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] - 1);
            actionMap[? util.actionMapThrustersCountString] -= 1;
        } else {
            image_angle += 90;
            if(object_is_ancestor(object_index, objPlayerShip)) {
                view_angle[0] += 90
            }
        }
    } else {
        image_angle += 90;
        if(object_is_ancestor(object_index, objPlayerShip)) {
            view_angle[0] += 90
        }
    }
}
