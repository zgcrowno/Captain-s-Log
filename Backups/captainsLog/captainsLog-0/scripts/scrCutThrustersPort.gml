if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrDecrementAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, true);
