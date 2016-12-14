if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Bow"] == "Active")) {
    actionMap[? "Shields Bow"] = "To Activate";
} else if(!(actionMap[? "Shields Bow"] == "Active")) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
