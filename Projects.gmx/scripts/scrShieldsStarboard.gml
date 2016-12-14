if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Starboard"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
} else if(!(actionMap[? "Shields Starboard"] == active)) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
