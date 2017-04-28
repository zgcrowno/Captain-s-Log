if(actionMap[? util.actionMapThrustersBowString] > 0) {
    if(!scrRadarBoundIsSternAdjacent(self)) {
        x -= sprite_get_width(sprGridBox) * cos(degtorad(image_angle + 90));
        y += sprite_get_width(sprGridBox) * sin(degtorad(image_angle + 90));
        if(object_is_ancestor(object_index, objPlayerShip)) {
            if(scrIsFacingUp(self)) {
                view_yview[0] += util.backgroundMovementDistance;
            } else if(scrIsFacingLeft(self)) {
                view_xview[0] -= util.backgroundMovementDistance;
            } else if(scrIsFacingDown(self)) {
                view_yview[0] -= util.backgroundMovementDistance;
            } else {
                view_xview[0] += util.backgroundMovementDistance;
            }
        }
    } else {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
        actionMap[? util.actionMapThrustersBowString] = 0;
        //TODO: Error about leaving airspace
    }
}
