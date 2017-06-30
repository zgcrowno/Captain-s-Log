var strMap = argument0;
var strQueue = argument1;
var currentHP = argument2;  //Null in the event that this script is being called for thruster rotation.
var increment = real(argument3);

if(currentHP == noone) {
    if(!(requiredPPThrustersRotate > currentPP) && !(actionMap[? strMap] > 0)) {
        actionMap[? strMap] = real(increment);
        ds_list_add(actionQueue, strQueue + string(increment));
    } else if(actionMap[? strMap] > 0) {
        actionQueue[| ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap]))] = strQueue + string(actionMap[? strMap] + increment);
        actionMap[? strMap] = actionMap[? strMap] + real(increment);
    } else {
        scrLog(global.util.warnPowerString);
    }
} else {
    if(!(requiredPPThrusters > currentPP) && !(actionMap[? strMap] > 0) && currentHP > 0) {
        actionMap[? strMap] = real(increment);
        ds_list_add(actionQueue, strQueue + string(increment));
    } else if(actionMap[? strMap] > 0 && currentHP > 0) {
        actionQueue[| ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap]))] = strQueue + string(actionMap[? strMap] + increment);
        actionMap[? strMap] = actionMap[? strMap] + real(increment);
    } else if(currentHP <= 0) {
        scrLog(global.util.warnThrusterHealth);
    } else {
        scrLog(global.util.warnPowerString);
    }
}
//TODO: Maybe add conditions for other types of actions (non-thrusters) in the future.
