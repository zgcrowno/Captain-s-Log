strMap = argument0;
strQueue = argument1;

if(actionMap[? strMap] > 0) {
    if(actionMap[? strMap] == 1) {
        ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap])));
    } else {
        actionQueue[| ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap]))] = strQueue + string(actionMap[? strMap] - 1);
    }
    actionMap[? strMap]--;
}
