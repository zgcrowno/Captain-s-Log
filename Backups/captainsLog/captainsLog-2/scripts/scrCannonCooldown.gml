if(currentPPCannon > 0) {
    currentPPCannon -= cannonCooldownRate;
    currentPP += cannonCooldownRate;
} else if(currentPPCannon < 0) {
    currentPPCannon = 0;
}
