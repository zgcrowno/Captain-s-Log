if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    if(!scrRadarBoundIsPortAdjacent(self)) {
        x -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        y -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        if(object_is_ancestor(object_index, objPlayerShip)) {
            view_xview[0] -= util.backgroundMovementDistance;
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
        actionMap[? util.actionMapThrustersStarboardString] = 0;
    }
}
