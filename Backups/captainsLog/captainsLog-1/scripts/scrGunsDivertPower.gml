if(requiredPPGuns <= currentPP) {
    actionMap[? util.actionMapGunsString] = true;
    ds_list_add(actionQueue, util.actionMapGunsString);
} else {
    //To Do: Error to user about lack of power...
}
script_execute(scrSetState, initState);
