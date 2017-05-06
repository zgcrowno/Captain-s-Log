if(actionMap[? util.actionMapPassiveString] == toActivate) {
    //actionMap[? util.actionMapPassiveString] = active;
    //ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionMapPassiveString));
    if(object_index == objHalitosis) {
        sprite_index = sprHalitosisPassive;
    }
} else if(actionMap[? util.actionMapPassiveString] == toDeactivate) {
    //actionMap[? util.actionMapPassiveString] = inactive;
    //ds_list_delete(actionQueue, ds_list_find_index(actionQueue, util.actionQueueCutPassiveString));
    if(object_index == objHalitosis) {
        sprite_index = sprHalitosis;
    }
}
