if(actionMap[? util.actionMapThrustersSternString] > 0) {
    if(!scrRadarBoundIsBowAdjacent(self)) {
        x += sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        y -= sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        if(object_is_ancestor(object_index, objPlayerShip)) {
            view_yview -= util.backgroundMovementDistance;
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
        actionMap[? util.actionMapThrustersSternString] = 0;
    }
}
