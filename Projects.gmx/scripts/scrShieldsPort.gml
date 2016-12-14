if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Port"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
} else if(!(actionMap[? "Shields Port"] == active)) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
