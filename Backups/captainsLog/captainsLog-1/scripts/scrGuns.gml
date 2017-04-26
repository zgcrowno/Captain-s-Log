if(!(requiredPPGuns > currentPP) && !actionMap[? "Guns"]) {
    target = enemies[k];
    targetID = enemies[k].id;
    actionMap[? "Guns"] = true;
} else if(actionMap[? "Guns"]) {
    target = enemies[k];
    targetID = enemies[k].id;
    actionMap[? "Guns"] = true;
} else {
    //Error to user about lack of power
}
script_execute(scrWipeToInitState);
