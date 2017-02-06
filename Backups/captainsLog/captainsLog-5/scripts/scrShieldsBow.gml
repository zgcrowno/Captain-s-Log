if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Bow"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
    ds_list_add(actionQueue, "Shields#Bow");
} else if(!(actionMap[? "Shields Bow"] == active)) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
