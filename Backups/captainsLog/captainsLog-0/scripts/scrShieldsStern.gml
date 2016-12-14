if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!(actionMap[? "Shields Stern"] == "Active")) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
