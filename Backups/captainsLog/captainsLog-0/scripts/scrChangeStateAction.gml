strMap = argument0;
strQueue = argument1;       //In the event that this script is called for the guns or cannon,
strQueueCut = argument2;    //strQueue and strQueueCut will be equal to noone.

if(strMap == global.util.actionMapGunsString || strMap == global.util.actionMapCannonString) {
    if(actionMap[? strMap] == true) {
        actionMap[? strMap] = false;
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strMap));
    } else {
        actionMap[? strMap] = true;
        ds_list_add(actionQueue, strMap);
    }
} else {
    if(actionMap[? strMap] == toActivate) {
        if(!(callingFunction == script_get_name(scrResetActionMap))) {
            actionMap[? strMap] = inactive;
            if(ds_list_find_index(actionQueue, strQueue) != -1) {
                ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue));
            }
        } else {
            actionMap[? strMap] = active;
            if(ds_list_find_index(actionQueue, strQueue) != -1) {
                ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue));
            }
        }
    } else if(actionMap[? strMap] == toDeactivate) {
        actionMap[? strMap] = inactive;
        if(ds_list_find_index(actionQueue, strQueueCut) != -1) {
            ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueueCut));
        }
    } else if(actionMap[? strMap] == active) {
        actionMap[? strMap] = toDeactivate;
        ds_list_add(actionQueue, strQueueCut);
    } else if(actionMap[? strMap] == inactive) {
        actionMap[? strMap] = toActivate;
        ds_list_add(actionQueue, strQueue);
    }
}
