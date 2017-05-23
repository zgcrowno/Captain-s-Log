var distance = argument0;

if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrAddAction(global.util.actionMapThrustersSternString, global.util.actionQueueThrustersSternString, currentHPThrustersStern, distance);
