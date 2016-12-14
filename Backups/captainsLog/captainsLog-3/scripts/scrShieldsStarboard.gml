if(!(requiredPPShields > currentPP) && !actionMap[? "Shields Starboard"]) {
    actionMap[? "Shields Starboard"] = true;
} else if(!shieldsStarboard) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
