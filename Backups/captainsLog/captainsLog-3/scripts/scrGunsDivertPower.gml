if(requiredPPGuns <= currentPP) {
    actionMap[? "Guns"] = true;
    ds_list_add(actionQueue, "Guns");
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
