if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrDecrementAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString, true);
