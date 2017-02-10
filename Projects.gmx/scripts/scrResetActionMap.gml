//Keep an eye on this script. A large portion of it may end up being removed,
//as it's most likely executed earlier on in scrTimelineActions.
if(actionMap[? util.actionMapThrustersPortString] > 0) {
    if(actionMap[? util.actionMapThrustersPortString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString]))] = util.actionQueueThrustersPortString + string(actionMap[? util.actionMapThrustersPortString] - 1);
    }
    actionMap[? util.actionMapThrustersPortString]--;
}
if(actionMap[? util.actionMapThrustersStarboardString] > 0) {
    if(actionMap[? util.actionMapThrustersStarboardString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString]))] = util.actionQueueThrustersStarboardString + string(actionMap[? util.actionMapThrustersStarboardString] - 1);
    }
    actionMap[? util.actionMapThrustersStarboardString]--;
}
if(actionMap[? util.actionMapThrustersBowString] > 0) {
    if(actionMap[? util.actionMapThrustersBowString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString]))] = util.actionQueueThrustersBowString + string(actionMap[? util.actionMapThrustersBowString] - 1);
    }
    actionMap[? util.actionMapThrustersBowString]--;
}
if(actionMap[? util.actionMapThrustersSternString] > 0) {
    if(actionMap[? util.actionMapThrustersSternString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString]))] = util.actionQueueThrustersSternString + string(actionMap[? util.actionMapThrustersSternString] - 1);
    }
    actionMap[? util.actionMapThrustersSternString]--;
}
if(actionMap[? util.actionMapThrustersCountString] > 0) {
    if(actionMap[? util.actionMapThrustersCountString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString]))] = util.actionQueueThrustersCountString + string(actionMap[? util.actionMapThrustersCountString] - 1);
    }
    actionMap[? util.actionMapThrustersCountString]--;
}
if(actionMap[? util.actionMapThrustersClockString] > 0) {
    if(actionMap[? util.actionMapThrustersClockString] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString]))] = util.actionQueueThrustersClockString + string(actionMap[? util.actionMapThrustersClockString] - 1);
    }
    actionMap[? util.actionMapThrustersClockString]--;
}
if(actionMap[? util.actionMapShieldsPortString] == toActivate) {
    actionMap[? util.actionMapShieldsPortString] = active;
    if(ds_list_find_index(actionQueue, util.actionQueueShieldsPortString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsPortString));
    }
} else if(actionMap[? util.actionMapShieldsPortString] == toDeactivate) {
    actionMap[? util.actionMapShieldsPortString] = inactive;
    if(ds_list_find_index(actionQueue, util.actionQueueCutShieldsPortString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutShieldsPortString));
    }
}
if(actionMap[? util.actionMapShieldsStarboardString] == toActivate) {
    actionMap[? util.actionMapShieldsStarboardString] = active;
    if(ds_list_find_index(actionQueue, util.actionQueueShieldsStarboardString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsStarboardString));
    }
} else if(actionMap[? util.actionMapShieldsStarboardString] == toDeactivate) {
    actionMap[? util.actionMapShieldsStarboardString] = inactive;
    if(ds_list_find_index(actionQueue, util.actionQueueCutShieldsStarboardString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutShieldsStarboardString));
    }
}
if(actionMap[? util.actionMapShieldsBowString] == toActivate) {
    actionMap[? util.actionMapShieldsBowString] = active;
    if(ds_list_find_index(actionQueue, util.actionQueueShieldsBowString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsBowString));
    }
} else if(actionMap[? util.actionMapShieldsBowString] == toDeactivate) {
    actionMap[? util.actionMapShieldsBowString] = inactive;
    if(ds_list_find_index(actionQueue, util.actionQueueCutShieldsBowString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutShieldsBowString));
    }
}
if(actionMap[? util.actionMapShieldsSternString] == toActivate) {
    actionMap[? util.actionMapShieldsSternString] = active;
    if(ds_list_find_index(actionQueue, util.actionQueueShieldsSternString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueShieldsSternString));
    }
} else if(actionMap[? util.actionMapShieldsSternString] == toDeactivate) {
    actionMap[? util.actionMapShieldsSternString] = inactive;
    if(ds_list_find_index(actionQueue, util.actionQueueCutShieldsSternString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutShieldsSternString));
    }
}
if(actionMap[? util.actionMapPassiveString] == toActivate) {
    actionMap[? util.actionMapPassiveString] = active;
    if(ds_list_find_index(actionQueue, util.actionMapPassiveString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapPassiveString));
    }
} else if(actionMap[? util.actionMapPassiveString] == toDeactivate) {
    actionMap[? util.actionMapPassiveString] = inactive;
    if(ds_list_find_index(actionQueue, util.actionQueueCutPassiveString) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutPassiveString));
    }
}
actionMap[? util.actionMapGunsString] = false;
if(ds_list_find_index(actionQueue, util.actionMapGunsString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapGunsString));
}
actionMap[? util.actionMapCannonString] = false;
if(ds_list_find_index(actionQueue, util.actionMapCannonString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapCannonString));
}
actionMap[? util.actionMapActiveString] = false;
if(ds_list_find_index(actionQueue, util.actionMapActiveString) != -1) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapActiveString));
}
actionMap[? util.actionMapTargetString] = noone;
