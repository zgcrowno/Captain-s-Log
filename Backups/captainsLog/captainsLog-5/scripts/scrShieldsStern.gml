if(!(requiredPPShields > currentPP) && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Stern"] = true;
} else if(!shieldsStern) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
