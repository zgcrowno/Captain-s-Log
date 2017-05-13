var strMap = argument0;
var strQueue = argument1;
var currentHP = argument2;  //Null in the event that this script is being called for thruster rotation.
var increment = argument3;

if(currentHP == noone) {
    if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? strMap] > 0)) {
        actionMap[? strMap] = real(increment);
        ds_list_add(actionQueue, strQueue + string(increment));
    } else if(actionMap[? strMap] > 0) {
        show_debug_message(ds_list_find_index(actionQueue, actionMap[? strMap]));
        actionQueue[| ds_list_find_index(actionQueue, actionMap[? strMap])] = strQueue + string(increment);
        //actionQueue[| real(actionQueue[| strQueue + string(actionMap[? strMap])])] = strQueue + string(increment);
        actionMap[? strMap] = actionMap[? strMap] + real(increment);
    } else {
        //To Do: Error to user about lack of power...
    }
} else {
    if(!(requiredPPThrusters > currentPP) && !(actionMap[? strMap] > 0) && currentHP > 0) {
        actionMap[? strMap] = real(increment);
        ds_list_add(actionQueue, strQueue + string(increment));
    } else if(actionMap[? strMap] > 0 && currentHP > 0) {
        actionQueue[| real(actionQueue[| strQueue + string(actionMap[? strMap])])] = strQueue + string(increment);
        actionMap[? strMap] = actionMap[? strMap] + real(increment);
    } else {
        //To Do: Error to user about lack of power and/or thrusters health
    }
}
//TODO: Maybe add conditions for other types of actions (non-thrusters) in the future.
