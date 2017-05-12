var strMap = argument0;
var strQueue = argument1;
var kill = argument2;

if(kill) {
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap])));
    actionMap[? strMap] = 0;
} else {
    if(actionMap[? strMap] > 0) {
        if(actionMap[? strMap] == 1) {
            ds_list_delete(actionQueue, ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap])));
        } else {
            actionQueue[| ds_list_find_index(actionQueue, strQueue + string(actionMap[? strMap]))] = strQueue + string(actionMap[? strMap] - 1);
        }
        actionMap[? strMap]--;
    }
}
