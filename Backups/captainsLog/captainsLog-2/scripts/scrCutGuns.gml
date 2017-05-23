if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapGunsString]) {
    scrChangeStateAction(global.util.actionMapGunsString, noone, noone);
}
