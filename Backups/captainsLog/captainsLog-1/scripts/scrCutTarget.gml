if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

if(actionMap[? global.util.actionMapTargetString] != noone) {
    actionMap[? global.util.actionMapTargetString] = noone;
}
if(target != noone) {
    target = noone;
}
