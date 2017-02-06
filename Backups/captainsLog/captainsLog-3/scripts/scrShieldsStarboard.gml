if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Starboard"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    ds_list_add(actionQueue, "Shields#Star");
} else if(!(actionMap[? "Shields Starboard"] == active)) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
