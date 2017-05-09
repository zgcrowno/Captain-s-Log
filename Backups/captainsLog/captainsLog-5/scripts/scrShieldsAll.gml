if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, "Shields#Starboard");
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
} else if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsPortString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsPortString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsStarboardString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsStarboardString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsBowString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsBowString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    actionMap[? global.util.actionMapShieldsSternString] = toActivate;
    ds_list_add(actionQueue, global.util.actionQueueShieldsSternString);
} else if(!((actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active))) {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
