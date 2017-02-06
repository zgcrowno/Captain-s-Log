if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
    ds_list_delete(actionQueue, "Guns");
}
script_execute(scrWipeToInitState);
