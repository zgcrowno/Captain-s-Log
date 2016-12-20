if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Bow"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
} else if(!(actionMap[? "Shields Bow"] == active)) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
