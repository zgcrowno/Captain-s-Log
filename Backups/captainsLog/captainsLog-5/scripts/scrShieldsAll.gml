if(!((requiredPPShields * 4) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(5);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(6);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(7);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(8);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 3) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(9);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(10);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(11);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(12);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(13);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(14);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
} else if(!((requiredPPShields * 2) > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(15);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
} else if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(16);
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && !(actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(17);
    scrChangeStateAction(global.util.actionMapShieldsStarboardString, global.util.actionQueueShieldsStarboardString, global.util.actionQueueCutShieldsStarboardString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && !(actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(18);
    scrChangeStateAction(global.util.actionMapShieldsBowString, global.util.actionQueueShieldsBowString, global.util.actionQueueCutShieldsBowString);
} else if(!(requiredPPShields > currentPP) && (actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && !(actionMap[? global.util.actionMapShieldsSternString] == active)) {
    show_debug_message(19);
    scrChangeStateAction(global.util.actionMapShieldsSternString, global.util.actionQueueShieldsSternString, global.util.actionQueueCutShieldsSternString);
} else if(!((actionMap[? global.util.actionMapShieldsPortString] == active) && (actionMap[? global.util.actionMapShieldsStarboardString] == active) && (actionMap[? global.util.actionMapShieldsBowString] == active) && (actionMap[? global.util.actionMapShieldsSternString] == active))) {
    //To Do: Error to user about lack of power...
}
scrSetState(initState);
