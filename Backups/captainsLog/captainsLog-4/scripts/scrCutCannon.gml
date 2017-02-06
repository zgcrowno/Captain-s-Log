script_execute(scrWipeToInitState);
if(actionMap[? "Cannon"]) {
    actionMap[? "Cannon"] = false;
    ds_list_delete(actionQueue, "Cannon");
    currentPPCannon = 0;
}
