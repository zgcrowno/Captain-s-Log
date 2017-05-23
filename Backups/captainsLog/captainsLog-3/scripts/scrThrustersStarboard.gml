var distance = argument0;

if(object_is_ancestor(object_index, objPlayerShip)) {
    scrSetState(global.util.initState);
}

scrAddAction(global.util.actionMapThrustersStarboardString, global.util.actionQueueThrustersStarboardString, currentHPThrustersStarboard, distance);
