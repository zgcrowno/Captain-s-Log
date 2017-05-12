scrSetState(initState);

if(!(requiredPPShields > currentPP) && !(actionMap[? global.util.actionMapShieldsPortString] == active)) {
    scrChangeStateAction(global.util.actionMapShieldsPortString, global.util.actionQueueShieldsPortString, global.util.actionQueueCutShieldsPortString);
} else if(!(actionMap[? global.util.actionMapShieldsPortString] == active)) {
    //To Do: Error to user about lack of power...
} 
