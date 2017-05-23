if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrDecrementAction(global.util.actionMapThrustersBowString, global.util.actionQueueThrustersBowString, true);
