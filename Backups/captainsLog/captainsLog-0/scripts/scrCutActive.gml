script_execute(scrWipeToInitState);
if(actionMap[? "Active"]) {
    actionMap[? "Active"] = false;
    ds_list_delete(actionQueue, "Active");
    currentPPActive = 0;
}
