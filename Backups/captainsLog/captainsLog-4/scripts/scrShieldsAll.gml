if(!((requiredPPShields * 4) > currentPP) && !actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Starboard"] = true;
} else if(!((requiredPPShields * 3) > currentPP) && actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Starboard"] = true;
    actionMap[? "Shields Bow"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 3) > currentPP) && !actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Bow"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 3) > currentPP) && !actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Starboard"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 3) > currentPP) && !actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Starboard"] = true;
    actionMap[? "Shields Bow"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Bow"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Starboard"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Starboard"] = true;
    actionMap[? "Shields Bow"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && !actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Stern"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && !actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Bow"] = true;
} else if(!((requiredPPShields * 2) > currentPP) && !actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
    actionMap[? "Shields Starboard"] = true;
} else if(!(requiredPPShields > currentPP) && !actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Port"] = true;
} else if(!(requiredPPShields > currentPP) && actionMap[? "Shields Port"] && !actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Starboard"] = true;
} else if(!(requiredPPShields > currentPP) && actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && !actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Bow"] = true;
} else if(!(requiredPPShields > currentPP) && actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && !actionMap[? "Shields Stern"]) {
    actionMap[? "Shields Stern"] = true;
} else if(!(actionMap[? "Shields Port"] && actionMap[? "Shields Starboard"] && actionMap[? "Shields Bow"] && actionMap[? "Shields Stern"])) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
