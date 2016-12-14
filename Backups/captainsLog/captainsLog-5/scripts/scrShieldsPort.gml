if(!(requiredPPShields > currentPP) && !actionMap[? "Shields Port"]) {
    actionMap[? "Shields Port"] = true;
} else if(!shieldsPort) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
