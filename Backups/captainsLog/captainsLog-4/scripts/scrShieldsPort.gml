if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Port"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
} else if(!(actionMap[? "Shields Port"] == "Active")) {
    //To Do: Error to user about lack of power...
} 
script_execute(scrWipeToInitState);
