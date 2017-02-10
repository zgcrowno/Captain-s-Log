if(actionMap[? util.actionMapThrustersPortString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
    actionMap[? util.actionMapThrustersPortString] = 0;
}
if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
    actionMap[? util.actionMapThrustersStarboardString] = 0;
}
if(actionMap[? util.actionMapThrustersBowString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
    actionMap[? util.actionMapThrustersBowString] = 0;
}
if(actionMap[? util.actionMapThrustersSternString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
    actionMap[? util.actionMapThrustersSternString] = 0;
}
if(actionMap[? util.actionMapThrustersClockString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString])));
    actionMap[? util.actionMapThrustersClockString] = 0;
}
if(actionMap[? util.actionMapThrustersCountString] > 0) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString])));
    actionMap[? util.actionMapThrustersCountString] = 0;
}
if(actionMap[? util.actionMapShieldsPortString] == active) {
    actionMap[? util.actionMapShieldsPortString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsPortString);
} else if(actionMap[? util.actionMapShieldsPortString] == toActivate) {
    actionMap[? util.actionMapShieldsPortString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsPortString)));
}
if(actionMap[? util.actionMapShieldsStarboardString] == active) {
    actionMap[? util.actionMapShieldsStarboardString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsStarboardString);
} else if(actionMap[? util.actionMapShieldsStarboardString] == toActivate) {
    actionMap[? util.actionMapShieldsStarboardString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsStarboardString)));
}
if(actionMap[? util.actionMapShieldsBowString] == active) {
    actionMap[? util.actionMapShieldsBowString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsBowString);
} else if(actionMap[? util.actionMapShieldsBowString] == toActivate) {
    actionMap[? util.actionMapShieldsBowString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsBowString)));
}
if(actionMap[? util.actionMapShieldsSternString] == active) {
    actionMap[? util.actionMapShieldsSternString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutShieldsSternString);
} else if(actionMap[? util.actionMapShieldsSternString] == toActivate) {
    actionMap[? util.actionMapShieldsSternString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsSternString)));
}
if(actionMap[? util.actionMapGunsString]) {
    actionMap[? util.actionMapGunsString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapGunsString));
}
if(actionMap[? util.actionMapCannonString]) {
    actionMap[? util.actionMapCannonString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapCannonString));
    currentPPCannon = 0;
}
if(actionMap[? util.actionMapActiveString]) {
    actionMap[? util.actionMapActiveString] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapActiveString));
    currentPPActive = 0;
}
if(actionMap[? util.actionMapPassiveString] == active) {
    actionMap[? util.actionMapPassiveString] = toDeactivate;
    ds_list_add(actionQueue, util.actionQueueCutPassiveString);
} else if(actionMap[? util.actionMapPassiveString] == toActivate) {
    actionMap[? util.actionMapPassiveString] = inactive;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, ds_list_find_index(actionQueue, util.actionMapPassiveString)));
}
if(actionMap[? util.actionMapTargetString] != noone) {
    actionMap[? util.actionMapTargetString] = noone;
}
if(target != noone) {
    target = noone;
}
script_execute(scrSetState, initState);
