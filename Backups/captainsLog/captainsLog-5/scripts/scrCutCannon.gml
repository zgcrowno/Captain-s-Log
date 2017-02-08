script_execute(scrWipeToInitState);
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Cannon"));
    currentPPCannon = 0;
}
