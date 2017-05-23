var distance = argument0;

if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrAddAction(global.util.actionMapThrustersPortString, global.util.actionQueueThrustersPortString, currentHPThrustersPort, distance);
