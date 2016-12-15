if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
} else if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Stern"] = toActivate;
} else if(!((actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active))) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
