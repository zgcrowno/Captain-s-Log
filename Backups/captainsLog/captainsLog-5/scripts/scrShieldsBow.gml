if(!(requiredPPShields > currentPP) && !actionMap[? "Shields Bow"]) {
    actionMap[? "Shields Bow"] = true;
} else if(!shieldsBow) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
