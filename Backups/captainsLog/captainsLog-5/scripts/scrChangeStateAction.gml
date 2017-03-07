strMap = argument0;
strQueue = argument1;
strQueueCut = argument2;

if(actionMap[? strMap] == toActivate) {
    actionMap[? strMap] = active;
    if(ds_list_find_index(actionQueue, strQueue) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue));
    }
} else if(actionMap[? strMap] == toDeactivate) {
    actionMap[? strMap] = inactive;
    if(ds_list_find_index(actionQueue, strQueueCut) != -1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueueCut));
    }
}
