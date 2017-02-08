if(actionMap[? "Guns"]) {
    actionMap[? "Guns"] = false;
    ds_list_delete(actionQueue, ds_list_find_index(actionQueue, "Guns"));
}
script_execute(scrWipeToInitState);
