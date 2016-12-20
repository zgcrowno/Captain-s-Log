if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Stern"] = toActivate;
} else if(!(actionMap[? "Shields Stern"] == active)) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
