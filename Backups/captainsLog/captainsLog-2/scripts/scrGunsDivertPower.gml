scrSetState(initState);

if(requiredPPGuns <= currentPP) {
    scrChangeStateAction(global.util.actionMapGunsString, noone, noone);
} else {
    //To Do: Error to user about lack of power...
}
