script_execute(scrWipeToInitState);
if(actionMap[? "Active"]) {
    actionMap[? "Active"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Active"));
    currentPPActive = 0;
}
