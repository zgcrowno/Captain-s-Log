if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, "Shields#Starboard");
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
} else if(!(requiredPPShields > currentPP) && !(actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsPortString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsPortString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && !(actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsStarboardString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && !(actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsBowString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && !(actionMap[? util.actionMapShieldsSternString] == active)) {
    actionMap[? util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, util.actionQueueShieldsSternString);
} else if(!((actionMap[? util.actionMapShieldsPortString] == active) && (actionMap[? util.actionMapShieldsStarboardString] == active) && (actionMap[? util.actionMapShieldsBowString] == active) && (actionMap[? util.actionMapShieldsSternString] == active))) {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
