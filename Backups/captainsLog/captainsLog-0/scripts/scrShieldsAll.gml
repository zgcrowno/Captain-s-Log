if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Starboard"] = "To Activate";
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Starboard"] = "To Activate";
    actionMap[? "Shields Bow"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Bow"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Starboard"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Starboard"] = "To Activate";
    actionMap[? "Shields Bow"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Bow"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Starboard"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Starboard"] = "To Activate";
    actionMap[? "Shields Bow"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Bow"] = "To Activate";
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
    actionMap[? "Shields Starboard"] = "To Activate";
} else if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Port"] = "To Activate";
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == "Active") && !(actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Starboard"] = "To Activate";
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && !(actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Bow"] = "To Activate";
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && !(actionMap[? "Shields Stern"] == "Active")) {
    actionMap[? "Shields Stern"] = "To Activate";
} else if(!((actionMap[? "Shields Port"] == "Active") && (actionMap[? "Shields Starboard"] == "Active") && (actionMap[? "Shields Bow"] == "Active") && (actionMap[? "Shields Stern"] == "Active"))) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
