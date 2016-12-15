if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Starboard"] == "Active")) {
    actionMap[? "Shields Starboard"] = "To Activate";
} else if(!(actionMap[? "Shields Starboard"] == "Active")) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
