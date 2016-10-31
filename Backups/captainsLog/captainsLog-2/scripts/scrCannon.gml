currentState = initState;
input = "";
if(currentPPCannon == 0) {
    if(currentPP >= requiredPPCannon) {
        currentPPCannon += requiredPPCannon;
        currentPP -= requiredPPCannon;
        script_execute(scrAttackCannon);
    } else {
        //To Do: Error message to user about insufficient power
    }
} else {
    //To Do: Error message to user about cooldown
}
