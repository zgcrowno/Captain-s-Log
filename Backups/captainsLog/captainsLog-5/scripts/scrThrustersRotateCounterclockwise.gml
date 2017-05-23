var distance = argument0;

if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrAddAction(global.util.actionMapThrustersCountString, global.util.actionQueueThrustersCountString, noone, distance);
