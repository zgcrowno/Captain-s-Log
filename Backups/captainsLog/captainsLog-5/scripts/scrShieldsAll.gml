if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Star");
    ds_list_add(actionQueue, "Shields#Bow");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Star");
    ds_list_add(actionQueue, "Shields#Bow");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Bow");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Star");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Starboard");
    ds_list_add(actionQueue, "Shields#Bow");
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Bow");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Star");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    ds_list_add(actionQueue, "Shields#Star");
    ds_list_add(actionQueue, "Shields#Bow");
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Bow"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Bow");
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    actionMap[? "Shields Starboard"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
    ds_list_add(actionQueue, "Shields#Star");
} else if(!(requiredPPShields > currentPP) && !(actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Port"] = toActivate;
    ds_list_add(actionQueue, "Shields#Port");
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && !(actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Starboard"] = toActivate;
    ds_list_add(actionQueue, "Shields#Star");
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && !(actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Bow"] = toActivate;
    ds_list_add(actionQueue, "Shields#Bow");
} else if(!(requiredPPShields > currentPP) && (actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && !(actionMap[? "Shields Stern"] == active)) {
    actionMap[? "Shields Stern"] = toActivate;
    ds_list_add(actionQueue, "Shields#Stern");
} else if(!((actionMap[? "Shields Port"] == active) && (actionMap[? "Shields Starboard"] == active) && (actionMap[? "Shields Bow"] == active) && (actionMap[? "Shields Stern"] == active))) {
    //To Do: Error to user about lack of power...
}
script_execute(scrWipeToInitState);
